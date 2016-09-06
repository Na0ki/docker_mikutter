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
$ docker build -t mikutter/mikutter:mikutter-dev .
```

コンテナイメージのIDを確認
```
$ docker images
```

実行
```
$ docker run -it イメージID /bin/bash
```

# 作った環境
OSX 10.11.6  
Docker version 1.12.0, build 8eab29e