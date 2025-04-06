#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# remove net-tools, as it conflicts with uutils
apk del net-tools

# remove the system-wide zshrc configs
sed -i '/STARSHIP_CONFIG/,/starship/d' /etc/zsh/zshrc

# fix permissions
chmod 0775 /var/mail

# Update the container and install packages
apk update && apk upgrade
grep -v '^#' ./cli.packages | xargs apk add

# make the trigger for setting up linuxbrew more sensitive
sed 's/test ! -d \/home\/linuxbrew\/\.linuxbrew/test ! -d \/home\/linuxbrew\/\.linuxbrew\/bin/g' /etc/profile.d/00-bluefin-cli-brew-firstrun.sh
