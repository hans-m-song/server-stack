FROM debian:stable-slim

ENV USER steam
ENV HOME /home/${USER}
ENV STEAMCMDDIR ${HOME}/steamcmd

RUN apt update \
  && apt install --no-install-recommends --no-install-suggests -y \
  curl lib32gcc1 lib32stdc++6 ca-certificates  \
  && apt autoremove  \
  && useradd -m ${USER}  \
  && su - ${USER}  \
  && mkdir -p ${STEAMCMDDIR} \
  && curl -sqL 'http://media.steampowered.com/client/steamcmd_linux.tar.gz' | tar xvzf - -C ${STEAMCMDDIR} \
  && ./${STEAMCMDDIR}/steamcmd.sh +quit \
  && mkdir /home/steam/.steam/sdk32 \
  && ln -s /home/steam/steamcmd/linux32/steamclient.so /home/steam/.steam/sdk32/steamclient.so \
  && apt-get clean autoclean \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/*

USER ${USER}
WORKDIR ${STEAMCMDDIR}

COPY --chown=${USER} launch.sh update.sh ${STEAMCMDDIR}/

CMD ./launch.sh
