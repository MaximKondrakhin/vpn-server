# Используем готовый образ WireGuard от linuxserver
FROM linuxserver/wireguard

# Переменные окружения
ENV PUID=1000
ENV PGID=1000
ENV TZ=Europe/Moscow
ENV SERVERURL=auto
ENV SERVERPORT=51820
ENV PEERS=1
ENV PEERDNS=1.1.1.1
ENV INTERNAL_SUBNET=10.13.13.0

# Папка с конфигами
VOLUME /config

# Открываем UDP порт WireGuard
EXPOSE 51820/udp

# Запуск контейнера
CMD ["/init"]
