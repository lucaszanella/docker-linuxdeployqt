#FROM ubuntu:16.04
FROM mhitza/linuxdeployqt:5.13.2

#ENV QT_SELECT=5

# required by linuxdeployqt
#   fuse, binutils (objdump), libglib2.0-0
#RUN apt update && \
#      apt install --assume-yes python3-pip wget fuse binutils libglib2.0-0 && \
#    python3 -m pip install --upgrade pip

#RUN pip3 install "aqtinstall==0.8"

#RUN aqt install 5.140 linux desktop -m all
# && cp -R ./5.140/gcc_64/* /usr && rm -rf ./5.140

#RUN wget https://github.com/probonopd/linuxdeployqt/releases/download/6/linuxdeployqt-6-x86_64.AppImage \
#      --quiet --output-document=/usr/bin/linuxdeployqt && \
#    chmod +x /usr/bin/linuxdeployqt

# Minimal dependencies required to bundle Seamly2D (mostly GL/printer/font support)
#RUN apt update && \
#      apt install --assume-yes libgl1-mesa-glx libfontconfig1 libxi6 libdbus-1-3 libxcb-xfixes0 libegl1-mesa libcups2 libxrender1 libxkbcommon-x11-0

COPY builder.sh /
COPY make_seamly2d_appimage.sh /
COPY make_seamlyme_appimage.sh /
CMD /bin/bash
#CMD ./builder.sh
#ENTRYPOINT ["make_steamly2d_appimage.sh"]
