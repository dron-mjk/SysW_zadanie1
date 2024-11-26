# syntax=docker/dockerfile:1.3

FROM scratch as stage1
ADD alpine-minirootfs-3.20.3-x86_64.tar.gz /

RUN --no-cache apk add git python3 py3-pip openssh-client 

RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts 

RUN --mount=type=ssh,id=git_ssh git clone git@github.com:dron-mjk/SysW_zadanie1 /var/zadanie1

WORKDIR /var/zadanie1/app

RUN python -m venv .venv

RUN /var/zadanie1/app/.venv/bin/pip install -r requirements.txt


FROM scratch
ADD alpine-minirootfs-3.20.3-x86_64.tar.gz /

LABEL org.opencontainers.image.authors="Maciej Kamiński"

COPY --from=stage1 /var/zadanie1 /var/zadanie1

RUN apk add python3 curl

EXPOSE 5000

HEALTHCHECK --start-period=30s --interval=60s CMD curl --fail 127.0.0.1:5000 || exit 1

CMD ["/var/zadanie1/app/.venv/bin/python", "/var/zadanie1/app/main.py"]


