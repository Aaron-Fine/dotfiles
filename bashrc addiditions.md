# Addiditions to an existing .bashrc file

## Add git branch to path display and put prompt on second line

Append the following to the end of your existing bashrc file. Make sure to comment out the existing PS1 line!
```
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\n\$ "
```
