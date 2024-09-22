#!/bin/bash

# apt-get install -y fontconfig \
#   fonts-dejav \
#   ttf-mscorefonts-installer
  
wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb && \
dpkg -i packages-microsoft-prod.deb && \
apt-get update && \
apt-get install ttf-mscorefonts-installer -y  && \
apt-get install fontconfig  && \
fc-cache -f -v

cd /data && \
/usr/local/bin/pandoc sample.md \
-V linkcolor:blue \
-V geometry:a4paper \
-V geometry:margin=2cm \
-V fontsize=12pt \
-V mainfont="Times New Roman" \
-V monofont="DejaVu Sans Mono" \
--pdf-engine=xelatex \
-o sample.pdf
