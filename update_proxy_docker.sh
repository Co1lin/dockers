#!/bin/bash
# this script push the proxy docker from Docker Hub to Aliyun image registry

set -ex

date

docker login --username=user --password=password registry.cn-beijing.aliyuncs.com

docker pull teddysun/v2ray:latest

docker images
set +e
docker rmi registry.cn-beijing.aliyuncs.com/co1lin/network:latest
set -e
docker images

docker tag teddysun/v2ray:latest registry.cn-beijing.aliyuncs.com/co1lin/network:latest

docker push registry.cn-beijing.aliyuncs.com/co1lin/network:latest
