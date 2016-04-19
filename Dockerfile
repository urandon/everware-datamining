FROM yandex/rep:0.6.4
MAINTAINER Khomutov Nikita <inikitah@gmail.com>

RUN apt-get update && apt-get install -y\
  htop\
  python-dev\
  libxml2-dev\
  libxslt1-dev\
  zlib1g-dev

RUN bash --login -c "pip install\
  python-telegram-bot==3.4\
  beautifulsoup4==4.4.1\
  requests==2.9.1\
  pymongo==3.2.2\
  bottle==0.12.9\
  django==1.9.2\
  ipywidgets==4.1.1\
  seaborn==0.7.0"
