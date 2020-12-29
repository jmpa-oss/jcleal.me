FROM pandoc/core:2.11.3.1
RUN apk upgrade \
    && apk add texmf-dist texlive