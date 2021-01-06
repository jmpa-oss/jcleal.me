FROM pandoc/core:2.11.3.1
RUN apk add --no-cache \
    texmf-dist=2020.55416-r1 \
    texlive=20200406-r6 \
    && rm -rf /var/cache/apk
