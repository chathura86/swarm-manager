FROM docker:latest

RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        mercurial \
        git \
        && \
    pip install --upgrade awscli s3cmd python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
