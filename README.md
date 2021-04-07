<p align="center">  
<a href="https://github.com/xxh/xxh">xxh</a> entrypoint for <a href="https://github.com/romkatv/zsh-bin">romkatv/zsh-bin</a> - statically-linked, hermetic, relocatable Zsh.
</p>

<p align="center">  
If you like the idea of xxh click ⭐ on the repo and <a href="https://twitter.com/intent/tweet?text=Use%20the%20zsh%20shell%20wherever%20you%20go%20through%20the%20SSH%20without%20installation%20on%20the%20host.&url=https://github.com/xxh/xxh-shell-zsh" target="_blank">tweet</a>.
</p>

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
