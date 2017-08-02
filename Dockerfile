FROM docker:latest

# Install basic package

RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        mercurial \
        git \
        nodejs \
        && \
    pip install --upgrade awscli s3cmd python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

ADD ./app /app
WORKDIR /app

EXPOSE 80

CMD ["/usr/bin/node", "http.js"]
