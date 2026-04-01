#!/bin/bash
# Autoriser l'accès à l'écran
sudo chmod 666 /dev/tty0 /dev/fb0 > /dev/null 2>&1

# Lancer l'affichage (On pointe vers ton GitHub Pages !)
xinit /usr/bin/chromium-browser \
    --kiosk \
    --no-sandbox \
    --test-type \
    --noerrdialogs \
    --disable-infobars \
    https://romainchevalier27.github.io/garlic-pi2/ \
    -- -nocursor
