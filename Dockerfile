# Don't Remove Credit @MR
# Subscribe YouTube Channel For Amazing Bot @JK
# Ask Doubt on telegram @JO

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /FileToLink
WORKDIR /FileToLink
COPY . /FileToLink
CMD ["python", "bot.py"]
