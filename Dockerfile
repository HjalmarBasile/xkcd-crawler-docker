FROM centos:7

COPY ./xkcd_crawler.py /usr/bin/xkcd_crawler.py

RUN yum -y update \
 && yum install -y epel-release \
 && yum install -y python-pip \
 && pip install \
    requests \
    beautifulsoup4 \
 && pip install --upgrade urllib3==1.19.1 \
 && pip install --upgrade requests

ENTRYPOINT ["python", "/usr/bin/xkcd_crawler.py"]
