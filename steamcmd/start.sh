docker run -it \
  -p 7778:7778/udp \
  -p 27016:27016/udp \
  -p 8080:8080/tcp \
  -p 20561:20561/udp \
  -p 123:123/udp \
  -v /mnt/data/steam/kf2server:/home/steam/steamcmd/server \
  steamcmd
