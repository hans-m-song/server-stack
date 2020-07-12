./steamcmd.sh \
  +login anonymous \
  +force_install_dir ./${STEAM_SERVER_DIR} \
  +app_update ${STEAM_APP_ID} \
  +exit