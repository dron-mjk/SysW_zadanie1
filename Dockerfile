FROM scratch as stage1
ADD alpine-minirootfs-3.20.3-x86_64.tar.gz /

WORKDIR /var

RUN apk add git python3 py3-pip

RUN git clone https://github.com/dron-mjk/zadanie1

WORKDIR /var/zadanie1/app

RUN python -m venv .venv

RUN /var/zadanie1/app/.venv/bin/pip install -r requirements.txt


FROM scratch
ADD alpine-minirootfs-3.20.3-x86_64.tar.gz /

COPY --from=stage1 /var/zadanie1 /var/zadanie1

RUN apk add python3 curl

EXPOSE 5000

HEALTHCHECK --start-period=30s --interval=60s CMD curl --fail 127.0.0.1:5000 || exit 1

CMD ["/var/zadanie1/app/.venv/bin/python", "/var/zadanie1/app/main.py"]


