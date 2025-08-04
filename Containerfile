ARG base_image
FROM ${base_image}

RUN dnf -y copr enable gmanka/test
RUN dnf -y remove xiaomi-nabu-firmware
RUN dnf -y install 'xiaomi-nabu-firmware-1-1*'
RUN dnf -y copr enable yalter/niri
RUN dnf -y copr enable gmanka/xwayland-satellite
RUN dnf -y install niri fuzzel waybar xwayland-satellite --exclude alacritty --exclude mako
RUN dnf -y install fish tmux wl-clipboard distrobox brightnessctl NetworkManager-tui fastfetch
RUN dnf clean all
