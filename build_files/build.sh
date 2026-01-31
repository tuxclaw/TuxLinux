#!/bin/bash

set -ouex pipefail

### Add Repositories

# VS Code (Microsoft repo)
cat > /etc/yum.repos.d/vscode.repo << 'EOF'
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF
rpm --import https://packages.microsoft.com/keys/microsoft.asc

# WezTerm COPR
dnf5 -y copr enable wezfurlong/wezterm-nightly

### Install packages

# Development groups
dnf5 install -y @c-development @development-tools

# Terminal & shell
dnf5 install -y tmux vim zsh fd-find zoxide wezterm

# Editor
dnf5 install -y code

# Version control & dev essentials
dnf5 install -y git git-lfs gh lazygit

# Languages & runtimes (what you can't get via distrobox/toolbox)
dnf5 install -y golang rust cargo nodejs npm python3-pip java-17-openjdk-devel java-21-openjdk-devel

# Containers & virtualization
dnf5 install -y distrobox podman-compose

# Utilities
dnf5 install -y htop btop ripgrep jq yq fzf bat eza

# Disable COPRs
dnf5 -y copr disable wezfurlong/wezterm-nightly

### Enable services
systemctl enable podman.socket
