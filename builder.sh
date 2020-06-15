#!/usr/bin/env bash
echo "/usr/bin/linuxdeployqt /app/usr/share/applications/*.desktop $1 -appimage &&"
cp -R /app/usr/lib*/**/* /usr/lib/
/usr/bin/linuxdeployqt /app/usr/share/applications/*.desktop $1 -appimage && \
cp *.AppImage /app/usr