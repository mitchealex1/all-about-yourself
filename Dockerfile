ARG alpine_image_version=latest

FROM alpine:${alpine_image_version}

ARG terraform_version=1.3.9

RUN apk add --no-cache wget unzip curl jq

RUN wget https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip -O terraform_${terraform_version}.zip \
    && unzip terraform_${terraform_version}.zip \
    && rm terraform_${terraform_version}.zip \
    && mv terraform /usr/bin/terraform

WORKDIR /usr/src

ENTRYPOINT [ "/bin/sh" ]