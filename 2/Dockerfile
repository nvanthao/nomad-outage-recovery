FROM ubuntu:22.04

# install dependencies
RUN apt update
RUN apt install -y ca-certificates curl dumb-init sudo unzip jq wget bash iproute2 less tree

# install Hashi Switch
RUN wget -O /usr/local/bin/hs https://raw.githubusercontent.com/nvanthao/hashi-switch/main/get 
RUN chmod +x /usr/local/bin/hs

# install Consul
RUN hs consul 1.15.4

# install Nomad
RUN hs nomad 1.5.6

# install dumb-init
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64
RUN chmod +x /usr/local/bin/dumb-init

COPY ./entrypoint.sh .

ENTRYPOINT [ "dumb-init", "--" ]
CMD ["sh", "entrypoint.sh"]