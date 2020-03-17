CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"

#if [[ $XXH_VERBOSE != '2' ]]; then
#  # Suppress: awk: xxh-shell-zsh/build/libtinfo.so.5: no version information available (required by /lib/x86_64-linux-gnu/libreadline.so.7)
#  alias awk='awk $@ 2> >(grep -v "no version information available")'
#fi

if [[ $XXH_VERBOSE == '2' ]]; then
  echo Run $CURRENT_DIR/.zshrc
fi

setopt +o nomatch
for pluginrc_file in $CURRENT_DIR/../../../plugins/**/*-zsh-*/build/pluginrc.zsh; do
  if [[ -f $pluginrc_file ]]; then
    plugin_name=`basename $(dirname $(dirname $pluginrc_file))`

    # Search EXE environment variables for plugin and execute
    plugin_env_name=`echo $plugin_name | tr '[:lower:]' '[:upper:]' | sed 's/-/_/g'`
    prefix="$plugin_env_name"_EXE_
    if [[ $XXH_VERBOSE == '2' ]]; then
      echo "Search $prefix*** environment for $plugin_name"
    fi
    for l in `env | grep $prefix`; do
      if [[ $XXH_VERBOSE == '2' ]]; then
        echo ENV $plugin_name: $l
      fi
      data="$( cut -d '=' -f 2- <<< "$l" )";
      code=`echo $data | base64 -d`
      if [[ $XXH_VERBOSE == '2' ]]; then
        echo ENV $plugin_name RUN: $code
      fi
      eval $code
    done

    # Load plugin
    if [[ $XXH_VERBOSE == '1' || $XXH_VERBOSE == '2' ]]; then
      echo Load plugin $pluginrc_file
    fi
    source $pluginrc_file
  fi
done
setopt -o nomatch

if [[ -f compinit ]]; then
    compinit -d $XXH_HOME/.zcompdump-$ZSH_VERSION
fi

cd ~
