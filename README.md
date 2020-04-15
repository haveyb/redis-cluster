# redis-cluster
docker快速构建三主三从 redis-cluster

一、节点规划（三主三从）

| 容器名称  |  容器IP地址 | 映射端口号  |
| ------------ | ------------ | ------------ |
| redis-master1  | 172.20.0.1  | 6391->6391  |
| redis-master2  | 172.20.0.2  | 6392->6392  |
| redis-master3  | 172.20.0.3  | 6393->6393  |
| redis-slave-1  | 172.30.0.1  | 6394->6394  |
| redis-slave-2  | 172.30.0.2  | 6395->6395  |
| redis-slave-3  | 172.30.0.3  | 6396->6396  |


二、下载文件
```
mkdir /data/docker
cd /data/docker
git clone https://github.com/haveyb/redis-cluster.git
cd redis-cluster
```


三、开始构建

1、构建镜像

```php
docker build -t redis-cluster /data/docker/redis-cluster
```




