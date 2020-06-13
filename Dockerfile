FROM mhitza/linuxdeployqt:5.13.2

COPY builder.sh /
COPY make_seamly2d_appimage.sh /
COPY make_seamlyme_appimage.sh /
CMD /bin/bash