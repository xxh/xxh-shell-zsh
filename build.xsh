#!/usr/bin/env xonsh

import sys, argparse
from sys import exit
from shutil import which

parser = argparse.ArgumentParser(description='build')
parser.add_argument('-q', '--quiet', action='store_true', help=f"Quiet mode")
opt = parser.parse_args()

zsh_portable_url = 'https://github.com/romkatv/zsh-bin/releases/download/v2.0.0/zsh-5.8-linux-x86_64-static.tar.gz'
zsh_arch = zsh_portable_url.split('/')[-1]

def eprint(*args, **kwargs):
    if not opt.quiet:
        print(*args, file=sys.stderr, **kwargs)

script_dir = pf"{__file__}".absolute().parent
build_dir = script_dir / 'build'
rm -rf @(build_dir)/
mkdir -p @(build_dir)

for f in ['entrypoint.sh', '.zshrc', 'zsh.sh']:
    cp @(script_dir / f) @(build_dir)/

cd @(build_dir)

if not p'zsh-5.8-linux-x86_64-static'.exists():
    arg_q = ['-q'] if opt.quiet else []
    arg_s = ['-s'] if opt.quiet else []
    arg_progress = [] if opt.quiet else ['--show-progress']
    eprint(f'Download from {zsh_portable_url}')
    if which('wget'):
        r =![wget @(arg_q) @(arg_progress) @(zsh_portable_url) -O @(zsh_arch)]
        if r.returncode != 0:
            eprint(f'Error while download appimage using wget: {r}')
            exit(1)
    elif which('curl'):
        r =![curl @(arg_s) -L @(zsh_portable_url) -o @(zsh_arch)]
        if r.returncode != 0:
            eprint(f'Error while download appimage using curl: {r}')
            exit(1)
    else:
        print('Please install wget or curl and try again. Howto: https://duckduckgo.com/?q=how+to+install+wget+in+linux')
        exit(1)

    tar -xzf @(zsh_arch)
    rm @(zsh_arch)
else:
    eprint(f'File {zsh_arch} exists. Skip downloading')
