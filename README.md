
# 前提
* Nvidia Driver　がインストール済み
* WSL に Nvidia Container Toolkit がインストール済み


# 初回起動時
```
# コンテナ起動
docker-compose up -d

# コンテナのターミナルに入る
docker exec -it container_python39_with_cuda /bin/bash

# 仮想環境作成
python3 -m venv ./myenv

# 仮想環境に入る
source myenv/bin/activate

# pip の更新
pip install --upgrade pip
pip install --upgrade setuptools

# お好みで必要なライブラリのインストール
pip install xxxx

# example
pip install lit
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
pip install jupyter
```

# 使用時
```
# コンテナの起動を確認
# 起動していない場合は立ち上げる
# ない場合は docker-compose up -d

docker exec -it container_python39_with_cuda /bin/bash
source myenv/bin/activate
jupyter lab --ip 0.0.0.0 --no-browser --allow-root
```
