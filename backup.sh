#!/bin/bash
# 每日备份MinIO文件到备份目录

# 使用MinIO客户端同步文件
mc cp myminio/bucket /backup/

# 打包备份文件，带日期命名
tar -czvf /backup/backup-$(date +%Y%m%d).tar.gz /backup/

# 清理临时文件（可选）
rm -rf /backup/bucket
