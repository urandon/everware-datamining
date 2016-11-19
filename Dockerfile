FROM yandex/rep:0.6.6
MAINTAINER Khomutov Nikita <inikitah@gmail.com>

RUN apt-get update && apt-get install -y\
  htop\
  python-dev\
  libxml2-dev\
  libxslt1-dev\
  zlib1g-dev\
  cmake\
  libreadline-dev\
  luarocks\
  libprotobuf-dev\
  protobuf-compiler

RUN bash --login -c "pip install\
  python-telegram-bot\
  beautifulsoup4\
  requests\
  pymongo\
  bottle\
  django\
  ipywidgets\
  seaborn"

#RUN bash --login -c "source activate jupyterhub_py3 && pip install\
#  python-telegram-bot\
#  beautifulsoup4\
#  requests\
#  pymongo\
#  bottle\
#  django\
#  ipywidgets\
#  seaborn"
