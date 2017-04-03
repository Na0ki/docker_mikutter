# docker_mikutter
ておくれをコンテナに凝縮した

# なんこれ
mikutterのdevelopブランチ環境をお手軽に構築できてしまうておくれたコンテナ  
ruby 2.3.1の環境でmikutterをgitから落としてきます

# 使い方
コンテナイメージ作成
```
$ git clone https://github.com/Na0ki/docker_mikutter.git
$ cd docker_mikutter
$ docker build -t mikutter:mikutter-dev .
```

コンテナイメージのIDを確認
```
$ docker images
```

実行
```
$ docker run -it --name mikutter イメージID /bin/bash
```

# 作った環境
CentOS Linux release 7.3.1611  
Docker version 1.12.6, build 78d1802
