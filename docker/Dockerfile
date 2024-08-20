FROM --platform=linux/amd64 python:3.9-bullseye

RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list
RUN sed -i "s@http://security.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN apt-get update && apt-get install -y libxml2-dev libmariadb-dev\
  && pip3 install bson nanoid pycurl==7.45.3 tornado==6.0.2 sqlalchemy mysqlclient pymysql ujson redis hiredis pycryptodome bcrypt httpx[http2]==0.24.1 nest_asyncio pandas openpyxl xlsxwriter celery elasticsearch_dsl --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple --trusted-host pypi.tuna.tsinghua.edu.cn

ADD ./docker/entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

#ENTRYPOINT ["/entrypoint.sh"]

CMD ["bash"]
