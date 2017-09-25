FROM python:3 as build

COPY requirements*.txt /
RUN pip install -r requirements.txt
RUN pip install -r requirements.deploy.txt

COPY . /source/
WORKDIR /source/
RUN pip install --no-deps .

WORKDIR /

CMD [ "/usr/local/bin/failmap-admin" ]
