
# 前提
* Nvidia Driver　がインストール済み
* WSL に Nvidia Container Toolkit がインストール済み

# 初回起動時
```
docker compose up -d
docker exec -it container_python39_with_cuda /bin/bash
python3 -m venv ./myenv --without-pip
```

# 使用時
```
# コンテナの起動を確認
# 起動していない場合は立ち上げる
# ない場合は docker-compose up -d

source myenv/bin/activate
```
