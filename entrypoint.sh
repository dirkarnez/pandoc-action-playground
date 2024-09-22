#!/bin/bash

apt-get install -y fonts-dejav \
  ttf-mscorefonts-installer

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
