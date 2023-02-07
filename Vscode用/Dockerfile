FROM python:3.8.8

# Install & use pipenv
RUN python -m pip install --upgrade pip



WORKDIR /app

# このマウント意味ない。
# RUN --mount=type=ssh mkdir -p ~/.ssh \
#    && chmod 700 ~/.ssh \
#    && ssh-keyscan github.com >> ~/.ssh/known_hosts 
# pip install pipenv なので pipenv run python スクリプト　ってなる
# pip3 install pipenv の場合は　pipenv run python3 スクリプトってなる。
RUN pip install pipenv && pipenv install

ENV PIPENV_IGNORE_VIRTUALENVS=1
ENV PIPENV_VERBOSITY=-1


