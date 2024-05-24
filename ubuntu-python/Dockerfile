FROM co1lin/ubuntu-basic
LABEL maintainer="mail@co1in.me"

ARG TARGETOS
ARG TARGETARCH

SHELL ["/bin/bash", "-c"]

# RUN set -ex; source ~/miniforge3/bin/activate; pip --version; \
#     pip install --no-cache-dir numpy django pandas torch matplotlib \
#      flask tensorflow opencv-python djangorestframework \
#      beautifulsoup4 SQLAlchemy scikit-learn pillow \
#      boto3 pygame pyyaml selenium pytest click 'discord.py' \
#      fastapi nltk pymongo scipy aiohttp \
#      keras scrapy networkx pyspark 'redis[hiredis]' \
#      Jinja2 pulumi marshmallow tornado \
#      mysql-connector-python pycryptodome Kivy \
#      elasticsearch jwt h5py gym biopython lxml gensim \
#      sympy celery paho-mqtt mock python-dotenv \
#      plotly jax tweepy geopandas astropy \
#      pydantic dash pytz WTForms streamlit psutil nibabel \
#      joblib grpcio bottle Flask-WTF \
#      SpeechRecognition six paramiko maya graphene alembic;

RUN sudo apt install -y pkg-config libhdf5-dev
RUN source ~/miniforge3/bin/activate; pip install tensorflow
RUN source ~/miniforge3/bin/activate; pip install numpy
RUN source ~/miniforge3/bin/activate; pip install django
RUN source ~/miniforge3/bin/activate; pip install pandas
RUN source ~/miniforge3/bin/activate; pip install torch
RUN source ~/miniforge3/bin/activate; pip install matplotlib
RUN source ~/miniforge3/bin/activate; pip install flask

RUN source ~/miniforge3/bin/activate; pip install opencv-python
RUN source ~/miniforge3/bin/activate; pip install djangorestframework
RUN source ~/miniforge3/bin/activate; pip install beautifulsoup4
RUN source ~/miniforge3/bin/activate; pip install SQLAlchemy
RUN source ~/miniforge3/bin/activate; pip install scikit-learn
RUN source ~/miniforge3/bin/activate; pip install pillow
RUN source ~/miniforge3/bin/activate; pip install boto3
RUN source ~/miniforge3/bin/activate; pip install pygame
RUN source ~/miniforge3/bin/activate; pip install pyyaml
RUN source ~/miniforge3/bin/activate; pip install selenium
RUN source ~/miniforge3/bin/activate; pip install pytest
RUN source ~/miniforge3/bin/activate; pip install click
RUN source ~/miniforge3/bin/activate; pip install discord.py
RUN source ~/miniforge3/bin/activate; pip install fastapi
RUN source ~/miniforge3/bin/activate; pip install nltk
RUN source ~/miniforge3/bin/activate; pip install pymongo
RUN source ~/miniforge3/bin/activate; pip install scipy
RUN source ~/miniforge3/bin/activate; pip install aiohttp
RUN source ~/miniforge3/bin/activate; pip install keras
RUN source ~/miniforge3/bin/activate; pip install scrapy
RUN source ~/miniforge3/bin/activate; pip install networkx
RUN source ~/miniforge3/bin/activate; pip install pyspark
RUN source ~/miniforge3/bin/activate; pip install redis[hiredis]
RUN source ~/miniforge3/bin/activate; pip install Jinja2
RUN source ~/miniforge3/bin/activate; pip install pulumi
RUN source ~/miniforge3/bin/activate; pip install marshmallow
RUN source ~/miniforge3/bin/activate; pip install tornado
RUN source ~/miniforge3/bin/activate; pip install mysql-connector-python
RUN source ~/miniforge3/bin/activate; pip install pycryptodome
RUN source ~/miniforge3/bin/activate; pip install Kivy
RUN source ~/miniforge3/bin/activate; pip install elasticsearch
RUN source ~/miniforge3/bin/activate; pip install jwt
RUN source ~/miniforge3/bin/activate; pip install h5py
RUN source ~/miniforge3/bin/activate; pip install gym
RUN source ~/miniforge3/bin/activate; pip install biopython
RUN source ~/miniforge3/bin/activate; pip install lxml
RUN source ~/miniforge3/bin/activate; pip install gensim
RUN source ~/miniforge3/bin/activate; pip install sympy
RUN source ~/miniforge3/bin/activate; pip install celery
RUN source ~/miniforge3/bin/activate; pip install paho-mqtt
RUN source ~/miniforge3/bin/activate; pip install mock
RUN source ~/miniforge3/bin/activate; pip install python-dotenv
RUN source ~/miniforge3/bin/activate; pip install plotly
RUN source ~/miniforge3/bin/activate; pip install jax
RUN source ~/miniforge3/bin/activate; pip install tweepy
RUN source ~/miniforge3/bin/activate; pip install geopandas
RUN source ~/miniforge3/bin/activate; pip install astropy
RUN source ~/miniforge3/bin/activate; pip install pydantic
RUN source ~/miniforge3/bin/activate; pip install dash
RUN source ~/miniforge3/bin/activate; pip install pytz
RUN source ~/miniforge3/bin/activate; pip install WTForms
RUN source ~/miniforge3/bin/activate; pip install streamlit
RUN source ~/miniforge3/bin/activate; pip install psutil
RUN source ~/miniforge3/bin/activate; pip install nibabel
RUN source ~/miniforge3/bin/activate; pip install joblib
RUN source ~/miniforge3/bin/activate; pip install grpcio
RUN source ~/miniforge3/bin/activate; pip install bottle
RUN source ~/miniforge3/bin/activate; pip install Flask-WTF
RUN source ~/miniforge3/bin/activate; pip install SpeechRecognition
RUN source ~/miniforge3/bin/activate; pip install six
RUN source ~/miniforge3/bin/activate; pip install paramiko
RUN source ~/miniforge3/bin/activate; pip install maya
RUN source ~/miniforge3/bin/activate; pip install graphene
RUN source ~/miniforge3/bin/activate; pip install alembic

RUN rm -rf /home/ubuntu/.cache
CMD [ "zsh" ]
