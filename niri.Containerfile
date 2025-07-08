ARG base_image
FROM ${base_image}

RUN dnf -y copr enable yalter/niri
RUN dnf -y copr enable gmanka/xwayland-satellite
RUN dnf -y install niri fuzzel waybar xwayland-satellite
RUN dnf clean all

