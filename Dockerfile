FROM ubuntu:14.04

RUN apt-get update && apt-get install -y python-flask gunicorn
RUN useradd ubuntu
RUN mkdir -p /home/ubuntu/test

ADD wsgitest.py /home/ubuntu/test
ADD project.py /home/ubuntu/test

ADD wsgi.test /etc/gunicorn.d/
RUN chown -R ubuntu: /home/ubuntu

RUN /etc/init.d/gunicorn restart

EXPOSE 5000

CMD /bin/bash
