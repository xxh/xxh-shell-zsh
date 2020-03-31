[xxh](https://github.com/xxh/xxh) entrypoint for [romkatv/zsh-bin](https://github.com/romkatv/zsh-bin) - statically-linked, hermetic, relocatable Zsh.
## Install
Install from xxh repo:
```
xxh +I xxh-shell-zsh
```
Install from any repo:
```
xxh +I xxh-shell-zsh+git+https://github.com/xxh/xxh-shell-zsh
```
Connect:
```
xxh myhost +s zsh
```
To avoid adding `+s` every time use xxh config in `~/.config/xxh/config.xxhc` (`$XDG_CONFIG_HOME`):
```
hosts:
  ".*":                     # Regex for all hosts
    +s: zsh
```

## Plugins

**zsh xxh plugin** is the set of zsh scripts which will be run when you'll use xxh. You can create xxh plugin with your lovely aliases, tools or color theme and xxh will bring them to your ssh sessions.

🔎 [Search xxh plugins on Github](https://github.com/search?q=xxh-plugin-zsh&type=Repositories) or [Bitbucket](https://bitbucket.org/repo/all?name=xxh-plugin-zsh) or 💡 [Create xxh plugin](https://github.com/xxh/xxh-plugin-zsh-example)

Pinned xxh zsh plugins: [ohmyzsh](https://github.com/xxh/xxh-plugin-zsh-ohmyzsh), [powerlevel10k](https://github.com/xxh/xxh-plugin-zsh-powerlevel10k)

## Thanks
* Roman Perepelitsa for [romkatv/zsh-bin](https://github.com/romkatv/zsh-bin) 
