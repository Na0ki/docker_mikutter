# docker_mikutter

ておくれをコンテナに凝縮した

# なんこれ

mikutter の master ブランチ環境をお手軽に構築できてしまうておくれたコンテナ  
ruby 2.6.3 の環境で mikutter を git から落としてきます

# 使い方

## ヘッドレス

```
$ git clone https://github.com/Na0ki/docker_mikutter.git
$ cd docker_mikutter
$ docker-compose up --build -d
```

## GUI

```
$ git clone https://github.com/Na0ki/docker_mikutter.git
$ cd docker_mikutter
$ docker-compose -f docker-compose.gui.yml up --build -d
```

# 作った環境

macOS 10.14.5  
Docker version 18.09.2, build 6247962
