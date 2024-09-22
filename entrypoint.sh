#!/bin/bash

cd /data && \
/usr/local/bin/pandoc sample.md \
-V linkcolor:blue \
-V geometry:a4paper \
-V geometry:margin=2cm \
--pdf-engine=xelatex \
-o sample.pdf
