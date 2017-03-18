FROM binhex/arch-delugevpn:latest
LABEL org.freenas.interactive="false"                                   \
      org.freenas.version="1.1"                                           \
      org.freenas.upgradeable="true"                                    \
      org.freenas.expose-ports-at-host="true"                           \
      org.freenas.autostart="true"                                      \
      org.freenas.web-ui-protocol="http"                                \
      org.freenas.web-ui-port="8112"                                    \
      org.freenas.web-ui-path=""                                        \
      org.freenas.port-mappings="8112:8112/tcp,8118:8118/tcp,58846:58846/tcp,58946:58946"     \
      org.freenas.volumes="[                                            \
          {                                                             \
              \"name\": \"/config\",                                    \
              \"descr\": \"Config storage space\"                       \
          },                                                            \
          {                                                             \
              \"name\": \"/data\",                                 \
              \"descr\": \"Downloads volume\"                           \
          }                                                             \
      ]"                                                                \
      org.freenas.settings="[                                           \
       {                                                             \
              \"env\": \"VPN_ENABLED\",                                          \
              \"descr\": \"Yes/No\",               \
              \"optional\": true                                        \
          },                                                            \
           {                                                             \
              \"env\": \"VPN_USER\",                                          \
              \"descr\": \"VPN Username\",               \
              \"optional\": true                                        \
          },                                                            \
           {                                                             \
              \"env\": \"VPN_PASS\",                                          \
              \"descr\": \"VPN Password\",               \
              \"optional\": true                                        \
          },                                                            \
           {                                                             \
              \"env\": \"VPN_REMOTE\",                                          \
              \"descr\": \"VPN Gateway\",               \
              \"optional\": true                                        \
          },                                                            \
           {                                                             \
              \"env\": \"VPN_PORT\",                                          \
              \"descr\": \"VPN Port Number\",               \
              \"optional\": true                                        \
          },                                                            \
           {                                                             \
              \"env\": \"STRONG_CERTS\",                                          \
              \"descr\": \"Yes/No\",               \
              \"optional\": true                                        \
          },                                                            \
           {                                                             \
              \"env\": \"ENABLE_PRIVOXY\",                                          \
              \"descr\": \"Yes/No\",               \
              \"optional\": true                                        \
          },                                                            \
           {                                                             \
              \"env\": \"LAN_NETWORK\",                                          \
              \"descr\": \"Enter Lan Network\",               \
              \"optional\": true                                        \
          },                                                            \
           {                                                             \
              \"env\": \"NAME_SERVERS\",                                          \
              \"descr\": \"Enter DNS IPS\",               \
              \"optional\": true                                        \
          },                                                            \
           {                                                             \
              \"env\": \"DEBUG\",                                          \
              \"descr\": \"false/true\",               \
              \"optional\": true                                        \
          },                                                            \
           {                                                             \
              \"env\": \"UMASK\",                                          \
              \"descr\": \"000",               \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"TZ\",                                          \
              \"descr\": \"Timezone - eg Europe/London\",               \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"PGID\",                                        \
              \"descr\": \"GroupID\",                                   \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"PUID\",                                        \
              \"descr\": \"UserID\",                                    \
              \"optional\": true                                        \
         }                                                              \
      ]"
