#!/usr/bin/env bash

cp -R /app/usr/lib*/**/* /usr/lib/
/usr/bin/linuxdeployqt /app/usr/share/applications/seamlyme.desktop -appimage && \
cp *.AppImage /app/usr
