# 使用官方MinIO镜像
FROM minio/minio:latest

# 暴露MinIO默认端口
EXPOSE 9000

# 启动MinIO服务，指定数据存储目录
CMD ["server", "/data"]
