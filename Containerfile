ARG base_image
FROM ${base_image}

RUN mkdir /boot/dtb
RUN dnf -y copr enable gmanka/test
RUN dnf -y remove \
        kernel \
        kernel-core \
        kernel-modules \
        kernel-modules-core
RUN dnf -y install kernel-6.16.0-0.rc2.sdm845.fc42
RUN dnf -y install fish tmux wl-clipboard distrobox brightnessctl NetworkManager-tui fastfetch
RUN dnf clean all
