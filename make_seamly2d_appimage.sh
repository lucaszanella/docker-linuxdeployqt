#!/usr/bin/env bash

cp -R /app/usr/lib*/**/* /usr/lib/
/usr/bin/linuxdeployqt /app/usr/share/applications/seamly2d.desktop -executable=/app/usr/bin/seamlyme -appimage && \
cp *.AppImage /app/usr