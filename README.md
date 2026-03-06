# 🐧 Andy's GNOME

An immutable, atomic Linux distro built for work and play. Based on [Bazzite GNOME](https://bazzite.gg/) and powered by [bootc](https://github.com/bootc-dev/bootc).

This is the **GNOME variant** — same developer toolchain as [TuxLinux](https://github.com/eosdev-x/TuxLinux) (KDE), but running GNOME with full theming and extension support.

Andy's GNOME ships a full developer toolchain, gaming-ready GPU support, and a curated set of tools — all baked into an atomic image that updates reliably and rolls back instantly.

## What's Included

### Developer Tools
- **Languages:** Go, Rust, Node.js, Python, Java 17/21
- **Editors:** VS Code, Vim
- **Terminal:** WezTerm, tmux, Zsh, Starship prompt
- **Tools:** Git, GitHub CLI, Lazygit, ripgrep, fzf, bat, eza, fd, jq, yq, htop, btop, git-delta, hyperfine, yt-dlp
- **Build:** GCC, C development tools, development-tools group
- **Tauri:** Full build deps (WebKitGTK, OpenSSL, GTK3, librsvg, pango)

### Containers
- Podman + podman-compose
- Distrobox

### GNOME Theming & Extensions
- GNOME Tweaks
- GNOME Extensions App
- sassc (SASS compiler for GTK themes)
- glib2-devel (GLib development headers)
- optipng (PNG optimizer)
- dialog (TUI dialog boxes)
- gtk-murrine-engine & gtk2-engines (theme engines)

### Networking
- Cloudflare Tunnel client (cloudflared)

### System
- Immutable base — OS updates are atomic images, not package-by-package
- Automatic rollback if an update breaks something
- Gaming-ready with Steam, Lutris, and GPU optimizations from Bazzite

## Based On

Andy's GNOME is built on top of [Bazzite GNOME](https://bazzite.gg/), which brings:
- AMD/NVIDIA GPU drivers out of the box
- Steam, Lutris, and gaming optimizations
- Wayland + GNOME desktop
- Hardware-accelerated codecs

## Installation

### Switch from an existing Bazzite/Fedora Atomic system:
```bash
sudo bootc switch ghcr.io/tuxclaw/andysgnome
```

### Rebase from an existing Fedora Atomic system:
```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/tuxclaw/andysgnome:latest
```

Then reboot.

## Related

- **[TuxLinux](https://github.com/eosdev-x/TuxLinux)** — The KDE Plasma variant (upstream)
