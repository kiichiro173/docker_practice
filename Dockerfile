FROM python:3.8.8

# Install & use pipenv
RUN python -m pip install --upgrade pip


# sshキーの追加
# RUN mkdir -p /root/.ssh
# ADD ~/.ssh /root/.ssh
# RUN chmod 600 /root/.ssh/*

WORKDIR /app

# pip install pipenv なので pipenv run python スクリプト ってなる
# pip3 install pipenv の場合は　pipenv run python3 スクリプトってなる。
RUN pip install pipenv && pipenv install

ENV PIPENV_IGNORE_VIRTUALENVS=1
ENV PIPENV_VERBOSITY=-1

# 実行手順(VScodeに　Dev Containersを入れていることが条件)
# 1.vscode左下にある<>マークを押す。
# 2.open folder in container 

# memo
# マウントさせている状態にする。ok → docker-compose.ymlでvolumeを指定することで対応可能。
# pipenv環境でデバックするにはインタプリタを選択すればできるようになる。(もし上手くできてなかったらターミナルをリフレッシュしてみる。)
# pipenv が反映されているようにする！
# treatment_managementでデバックできるようにする。
# コンテナ内で修正したものをgit pushできるようにする。