FROM pandoc/latex:edge-ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y --no-install-recommends --allow-unauthenticated install \
    wget && \
    wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections && \
    wget -qO- https://raw.githubusercontent.com/yakumioto/YaHei-Consolas-Hybrid-1.12/master/install.sh | sh && \
    apt-get -y --no-install-recommends --allow-unauthenticated install \
    ttf-mscorefonts-installer \
    fonts-dejavu \
    texlive-xetex \
    librsvg2-bin \
    texlive-science \
    fontconfig && \
    fc-cache -f -v

RUN tlmgr install fancyvrb && \
    tlmgr install newverbs && \
    tlmgr install xcolor && \
    tlmgr install sectsty
    
