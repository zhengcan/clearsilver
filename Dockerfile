FROM base/archlinux:latest
RUN echo "[options]" >> /etc/pacman.conf \
  && echo "SigLevel = Never" >> /etc/pacman.conf
RUN pacman-key --init \
  && pacman-key --refresh-keys || : \
  && pacman-key --populate archlinux || : \
  && pacman -Syyuv --noconfirm \
  && pacman-db-upgrade \
  && pacman -Scc --noconfirm
RUN pacman -S clearsilver --noconfirm
# CMD ["/bin/bash"]
