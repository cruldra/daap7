# daap7
* d docker
* a alpine linux
* a apache
* p7 php7


# 构建
```bash
docker build -t dongjak/daap7:1.0 .
```

# 推送到dockerhub
```bash
docker push dongjak/daap7:1.0
```

# 测试
```bash
docker run -it -d --name epay-web --link epay-db  -v D:\Workspace\PhpProjects\epay:/web/html  -p 8080:80  dongjak/daap7:1.0
```
