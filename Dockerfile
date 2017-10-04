FROM python:3

COPY requirements*.txt /
RUN pip install -r requirements.txt
RUN pip install -r requirements.deploy.txt

COPY . /source/
WORKDIR /source/
RUN pip install --no-deps .

WORKDIR /

# configuration for django-uwsgi to work correct in Docker environment
ENV UWSGI_GID root
ENV UWSGI_UID root
ENV UWSGI_MODULE failmap_admin.wsgi
ENV UWSGI_STATIC_MAP /static=/srv/failmap_admin/static

RUN /usr/local/bin/failmap-admin collectstatic

ENTRYPOINT [ "/usr/local/bin/failmap-admin" ]

CMD [ "help" ]
