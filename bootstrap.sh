#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function weDoIt() {
  #if the user is root, then move sudo info to keep things from breaking
  # during SSH sessions like 'sudo -i'
if [[ "${USER}" == "root" ]]; then
  [ -d "/etc/sudoers.d" ]; then
    cat .sshSudoKeepSSHEnv > /etc/sudoers.d/sshAdditions
  else
    mkdir /etc/sudoers.d
    cat .sshSudoKeepSSHEnv > /etc/sudoers.d/sshAdditions
else
  echo "SSH Env not added to sudoers.d/ as you must be root to do this."
fi;
}
function doIt() {
	rsync --exclude ".git/" \
    --exclude ".sshSudoKeepSSHEnv" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
  weDoIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
unset weDoIt;
