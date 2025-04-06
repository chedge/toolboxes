# shellcheck shell=sh
if test ! -O /home/linuxbrew; then
    sudo chown -R "$(id -u)" /home/linuxbrew
fi
