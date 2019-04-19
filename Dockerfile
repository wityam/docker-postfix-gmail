FROM wity/postfix

RUN zypper in --no-recommends -y cyrus-sasl cyrus-sasl-plain

WORKDIR /etc/postfix

COPY ./run-gmail /start-gmail
RUN chmod +x /start-gmail
ENTRYPOINT [ "/start-gmail" ]
