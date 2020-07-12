FROM cm2network/steamcmd

ENV USER steam

ENV STEAMCMDDIR /home/${USER}/steamcmd

USER ${USER}

WORKDIR ${STEAMCMDDIR}

COPY --chown=${USER} launch.sh update.sh ${STEAMCMDDIR}/

CMD ./launch.sh
