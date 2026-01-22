#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# remove net-tools, as it conflicts with uutils
apk del net-tools

# fix permissions
chmod 0775 /var/mail

# Update the container and install packages
apk update && apk upgrade
grep -v '^#' ./cli.packages | xargs apk add
mv /home/linuxbrew /home/homebrew

# install bcvk via cargo
cargo install --no-track --root /usr/local/ --locked --git https://github.com/bootc-dev/bcvk bcvk
