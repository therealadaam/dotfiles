[ -n "$PS1" ] && source ~/.bash_profile;
set TERM ="xterm-256color"
if [ "${uname}" == "Darwin" ]; then
  export SHELL="/bin/usr/local/bash"
fi;
