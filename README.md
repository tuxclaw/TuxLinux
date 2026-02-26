# 🐧 TuxLinux (GNOME)

An immutable, atomic Linux distro built for work and play. Based on [Bazzite GNOME](https://bazzite.gg/) and powered by [bootc](https://github.com/bootc-dev/bootc).

This is the **GNOME variant** of TuxLinux — same developer toolchain, but running GNOME instead of KDE Plasma. For the KDE version, see [eosdev-x/TuxLinux](https://github.com/eosdev-x/TuxLinux).

TuxLinux ships a full developer toolchain, gaming-ready GPU support, and a curated set of tools — all baked into an atomic image that updates reliably and rolls back instantly.

## What's Inside

### Development
- **Languages:** Go, Rust, Node.js, Python, Java 17/21
- **Editors:** VS Code, Vim
- **Terminal:** WezTerm, tmux, Zsh, Starship prompt
- **Tools:** Git, GitHub CLI, Lazygit, ripgrep, fzf, bat, eza, fd, jq, yq, htop, btop, git-delta, hyperfine, yt-dlp
- **Build:** GCC, C development tools, development-tools group
- **Tauri:** Full build deps (WebKitGTK, OpenSSL, GTK3, librsvg, pango)

### Containers & Virtualization
- Podman + podman-compose
- Distrobox

### GNOME Theming & Tools
- sassc (SASS compiler for GTK themes)
- glib2-devel (GLib development headers)
- optipng (PNG optimizer)
- dialog (TUI dialog boxes)

### Networking
- Cloudflare Tunnel client (cloudflared)

### System
- Immutable base — OS updates are atomic images, not package-by-package
- Rollback on boot if anything breaks
- Podman socket enabled by default

## Based On

TuxLinux GNOME is built on top of [Bazzite GNOME](https://bazzite.gg/), which brings:
- AMD/NVIDIA GPU drivers out of the box
- Steam, Lutris, and gaming optimizations
- Wayland + GNOME desktop
- Hardware-accelerated codecs

## Installation

### Switch from an existing Bazzite/Fedora Atomic system:
```bash
sudo bootc switch ghcr.io/tuxclaw/tuxlinux
```

### Rebase from an existing Fedora Atomic system:
```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/tuxclaw/tuxlinux:latest
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
