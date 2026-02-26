# 🐧 TuxLinux

An immutable, atomic Linux distro built for work and play. Based on [Bazzite](https://bazzite.gg/) and powered by [bootc](https://github.com/bootc-dev/bootc).

TuxLinux ships a full developer toolchain, gaming-ready GPU support, and a curated set of tools — all baked into an atomic image that updates reliably and rolls back instantly.

## What's Inside

### Development
- **Languages:** Go, Rust, Node.js, Python, Java 17/21
- **Editors:** VS Code, Vim
- **Terminal:** WezTerm, tmux, Zsh, Starship prompt
- **Tools:** Git, GitHub CLI, ripgrep, fzf, bat, eza, fd, jq, yq, htop, btop
- **Build:** GCC, C development tools, development-tools group
- **Tauri:** Full build deps (WebKitGTK, OpenSSL, GTK3, librsvg, pango)

### Containers & Virtualization
- Podman + podman-compose
- Distrobox

### Theming
- Kvantum

### System
- Immutable base — OS updates are atomic images, not package-by-package
- Rollback on boot if anything breaks
- Podman socket enabled by default

## Based On

TuxLinux is built on top of [Bazzite](https://bazzite.gg/), which brings:
- AMD/NVIDIA GPU drivers out of the box
- Steam, Lutris, and gaming optimizations
- Wayland + KDE Plasma desktop
- Hardware-accelerated codecs

## Installation

### Switch from an existing Bazzite/Fedora Atomic system:
```bash
sudo bootc switch ghcr.io/eosdev-x/tuxlinux
```

### Rebase from an existing Fedora Atomic system:
```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/eosdev-x/tuxlinux:latest
```

Then reboot.

## Building Locally

```bash
just build
```

Or with Podman directly:
```bash
podman build -t tuxlinux .
```

## Customization

All packages and customizations live in [`build_files/build.sh`](./build_files/build.sh). Edit that file to add or remove packages from the image.

## License

MIT
