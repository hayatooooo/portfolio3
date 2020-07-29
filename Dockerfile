FROM ruby:2.5

#コマンド実行
#railsに必要な必要なnodejsとpostgeqsqlをインストール
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /myapp
WORKDIR /myapp

#ローカルのファイルをコンテナへコピー
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install
COPY . /myapp
