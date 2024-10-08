#!/bin/bash

# --include-in-header href_new_tab.tex \

cd /data && \
/usr/local/bin/pandoc sample.md \
--include-in-header chapter_break.tex \
--include-in-header inline_code.tex \
--highlight-style pygments.theme \
-V linkcolor:blue \
-V geometry:a4paper \
-V geometry:margin=2cm \
-V fontsize=12pt \
-V mainfont="Times New Roman" \
-V monofont="YaHei Consolas Hybrid" \
--pdf-engine=xelatex \
-o sample.pdf
