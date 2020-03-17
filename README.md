[xxh](https://github.com/xxh/xxh) entrypoint for [romkatv/zsh-bin](https://github.com/romkatv/zsh-bin) - statically-linked, hermetic, relocatable Zsh.
## Install
Install from xxh repo:
```
xxhp i xxh-shell-zsh-romkatv
```
Install from any repo:
```
cd ~/.xxh/xxh/shells/
git clone https://github.com/xxh/xxh-shell-zsh-romkatv
./xxh-shell-zsh/build.xsh
xxh myhost +s xxh-shell-zsh-romkatv
```
To avoid adding `+s` every time use xxh config in `~/.xxh/.xxhc`:
```
hosts:
  ".*":                     # Regex for all hosts
    +s: xxh-shell-zsh-romkatv
```

## Plugins

**zsh xxh plugin** is the set of zsh scripts which will be run when you'll use xxh. You can create xxh plugin with your lovely aliases, tools or color theme and xxh will bring them to your ssh sessions.

🔎 [Search xxh plugins on Github](https://github.com/search?q=xxh-plugin-zsh&type=Repositories) or [Bitbucket](https://bitbucket.org/repo/all?name=xxh-plugin-zsh) or 💡 [Create xxh plugin](https://github.com/xxh/xxh-plugin-zsh-sample)

Pinned xxh zsh plugins: [ohmyzsh](https://github.com/xxh/xxh-plugin-zsh-ohmyzsh), [powerlevel10k](https://github.com/xxh/xxh-plugin-zsh-powerlevel10k)

## Thanks
* Roman Perepelitsa for [romkatv/zsh-bin](https://github.com/romkatv/zsh-bin) 
