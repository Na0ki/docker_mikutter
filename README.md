# docker\_mikutter
ておくれをコンテナに凝縮した

# なんこれ
mikutter の master ブランチ環境をお手軽に構築できてしまうておくれたコンテナ  
ruby 2.5.3 の環境で mikutter を git から落としてきます

# 使い方
コンテナイメージ作成
```
$ git clone https://github.com/Na0ki/docker_mikutter.git
$ cd docker_mikutter
$ docker-compose up --build -d
```

# 作った環境
macOS 10.14  
Docker version 18.06.1-ce, build e68fc7a
