#!/usr/bin/env bash

mkdir -p /home/runner/local
cd /home/project
qmake PREFIX=/home/runner/local Seamly2D.pro -r CONFIG+=no_ccache CONFIG+=noDebugSymbols
make
make install

mkdir -p /home/runner/local/share/applications /home/runner/local/share/icons/hicolor/256x256
cp dist/seamly2d.desktop /home/runner/local/share/applications/
cp share/img/Seamly2D_logo_254x254.png /home/runner/local/share/icons/hicolor/256x256/seamly2d.png
#cp share/img/Seamly2D_logo_254x254.png /home/runner/local/share/icons/hicolor/256x256/seamlyme.png
#rm /home/runner/local/share/applications/seamly2d.desktop
#cp dist/seamlyme.desktop /home/runner/local/share/applications
source /builder.sh
