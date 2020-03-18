#!/usr/bin/env bash

CDIR="$(cd "$(dirname "$0")" && pwd)"
build_dir=$CDIR/build

while getopts q: option
do
  case "${option}"
  in
    q) QUIET=${OPTARG};;
  esac
done

rm -rf $build_dir
mkdir -p $build_dir

for f in entrypoint.sh .zshrc zsh.sh
do
    cp $CDIR/$f $build_dir/
done

url='https://github.com/romkatv/zsh-bin/releases/download/v2.0.0/zsh-5.8-linux-x86_64-static.tar.gz'
tarname=`basename $url`

cd $build_dir

[ $QUIET ] && arg_q='-q' || arg_q=''
[ $QUIET ] && arg_s='-s' || arg_s=''
[ $QUIET ] && arg_progress='' || arg_progress='--show-progress'

if [ -x "$(command -v wget)" ]; then
  wget $arg_q $arg_progress $url -O $tarname
elif [ -x "$(command -v curl)" ]; then
  curl $arg_s -L $url -o $tarname
else
  echo Install wget or curl
fi

tar -xzf $tarname
rm $tarname
