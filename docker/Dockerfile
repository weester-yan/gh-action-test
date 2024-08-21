FROM --platform=linux/amd64 python:3.9-bullseye

RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list
RUN sed -i "s@http://security.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN apt-get update && apt-get install -y libxml2-dev libmariadb-dev

ADD ./docker/entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

#ENTRYPOINT ["/entrypoint.sh"]

CMD ["bash"]
