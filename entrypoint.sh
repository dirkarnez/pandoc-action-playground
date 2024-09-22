#!/bin/bash

apt-get install -y fonts-dejavu

cd /data && \
/usr/local/bin/pandoc sample.md \
-V linkcolor:blue \
-V geometry:a4paper \
-V geometry:margin=2cm \
-V fontsize=12pt \
-V mainfont="DejaVu Serif" \
-V monofont="DejaVu Sans Mono" \
--pdf-engine=xelatex \
-o sample.pdf
