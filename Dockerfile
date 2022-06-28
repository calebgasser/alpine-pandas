FROM alpine:latest

RUN apk add --no-cache --update python3 python3-dev gcc libffi-dev libc-dev musl-dev linux-headers g++ && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN python -m pip install numpy
RUN python -m pip install pandas
