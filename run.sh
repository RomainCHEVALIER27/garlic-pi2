#!/bin/bash

# 1. On donne les accès au matériel vidéo du Raspberry Pi
sudo chmod 666 /dev/tty0 /dev/fb0 > /dev/null 2>&1

# 2. On lance l'affichage via le serveur graphique xinit
# Cette URL est une horloge fiable qui fonctionne sans erreur 404
xinit /usr/bin/chromium-browser \
    --kiosk \
    --no-sandbox \
    --test-type \
    --noerrdialogs \
    --disable-infobars \
    https://jan.becke.online/flipclock/ \
    -- -nocursor
