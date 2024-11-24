FROM alpine

RUN mkdir /var/flaskserver

WORKDIR /var/flaskserver

COPY main.py .
COPY requirements.txt .

RUN apk add python3 py3-pip

RUN python -m venv .venv

RUN /var/flaskserver/.venv/bin/pip install -r requirements.txt

EXPOSE 80

CMD ["/var/flaskserver/.venv/bin/python", "main.py"]


