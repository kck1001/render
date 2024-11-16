FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo 'root:password' | chpasswd

EXPOSE 22

CMD ["/user/lib/shellinaboxd", "-t", "-s", "/:LOGIN"]
