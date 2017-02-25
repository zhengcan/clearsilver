FROM base/archlinux:latest
RUN echo "[options]" >> /etc/pacman.conf \
  && echo "SigLevel = Never" >> /etc/pacman.conf
RUN pacman-key --init \
  && pacman-key --refresh-keys || : \
  && pacman-key --populate archlinux || : \
  && pacman -Syu --noconfirm \
  && pacman-db-upgrade \
  && pacman -Syu --noconfirm
RUN pacman -S clearsilver --noconfirm
# CMD ["/bin/bash"]
