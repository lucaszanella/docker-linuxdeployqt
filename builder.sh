#!/usr/bin/env bash

cp -R /home/runner/local/lib*/**/* /usr/lib/
/usr/bin/linuxdeployqt /home/runner/local/share/applications/*.desktop -executable=/home/runner/local/bin/seamlyme  -appimage && \
cp *.AppImage /home/project/appimages
