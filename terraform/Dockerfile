ARG ubuntu_image_version=latest

FROM ubuntu:${ubuntu_image_version}

ARG tfenv_version=3.0.0

RUN apt update -y \
    && apt install wget unzip curl -y

WORKDIR /opt/

RUN wget https://github.com/tfutils/tfenv/archive/refs/tags/v${tfenv_version}.zip \
    && unzip v${tfenv_version}.zip

ENV PATH="/opt/tfenv-${tfenv_version}/bin:${PATH}"

WORKDIR /usr/src

COPY .terraform-version .terraform-version

RUN tfenv use

COPY . .

RUN terraform init

ENTRYPOINT [ "terraform" ]

CMD [ "--help" ]