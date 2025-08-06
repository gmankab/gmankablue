ARG base_image
FROM ${base_image}

RUN dnf -y copr enable gmanka/test
RUN dnf -y remove \
        kernel \
        kernel-core \
        kernel-modules \
        kernel-modules-core \
        kernel-modules-extra \
        kernel-devel \
        kernel-headers
RUN dnf -y install kernel-6.16.0-0.sm8150.fc42
RUN dnf -y copr enable yalter/niri
RUN dnf -y copr enable gmanka/xwayland-satellite
RUN dnf -y install niri fuzzel waybar xwayland-satellite --exclude alacritty --exclude mako
RUN dnf -y install fish tmux wl-clipboard distrobox brightnessctl NetworkManager-tui fastfetch
RUN dnf clean all
