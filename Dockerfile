# 使用官方Go语言环境作为基础镜像
FROM golang

# 将下载的ChatGPTProxy代码复制到容器中的指定目录，例如/app
COPY /path/to/ChatGPTProxy /app/ChatGPTProxy

# 设置工作目录为之前复制到的目录
WORKDIR /app/ChatGPTProxy

EXPOSE 8080

# 编译ChatGPTProxy应用程序
RUN go build -o ChatGPTProxy

# 当容器启动时运行ChatGPTProxy应用程序
CMD [ "./ChatGPTProxy" ]

