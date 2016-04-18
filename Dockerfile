FROM yandex/rep:0.6.4
MAINTAINER Khomutov Nikita <inikitah@gmail.com>

USER root
RUN apt-get -y update && apt-get install -y curl
RUN apt-get install htop

USER jupyter
RUN bash --login -c "pip install python-telegram-bot=3.4 beautifulsoup4=4.4.1 bottle=0.12.9 django=1.9.2 ipywidgets=4.1.1"