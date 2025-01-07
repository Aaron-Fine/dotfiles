# Addiditions to an existing .bashrc file

Append the following to the end of your existing bashrc file.

## Add git branch to path display and put prompt on second line
```
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[01;32m\]"
NO_COLOR="\[\033[0m\]"
BLUE="\[\033[01;34m\]"

PS1="$GREEN\u@\h$NO_COLOR:$BLUE\w$YELLOW\$(parse_git_branch)$NO_COLOR\n\$ "
```

## Make less have automatic syntax highlighting and other features
```
# if https://github.com/Textualize/rich-cli is installed...
if hash rich 2>/dev/null;
then
    export LESSOPEN="|rich --force-terminal  %s"
    export LESS="--RAW-CONTROL-CHARS"
fi
```
