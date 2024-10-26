FROM python:3.9-alpine

LABEL author="dora<xin199660@gmail.com>"

# 设置时区
ENV TZ=Asia/Shanghai

# 安装 scrapyd
RUN pip install scrapyd

WORKDIR /scrapyd

# 暴露端口
EXPOSE 6800

# 启动 scrapyd
CMD ["scrapyd"]