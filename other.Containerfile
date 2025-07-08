ARG base_image
FROM ${base_image}

RUN dnf -y install fish tmux wl-clipboard distrobox brightnessctl gamescope NetworkManager-tui fastfetch
RUN dnf clean all

