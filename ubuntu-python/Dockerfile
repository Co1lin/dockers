FROM co1lin/ubuntu-basic
LABEL maintainer="mail@co1in.me"

ARG TARGETOS
ARG TARGETARCH

SHELL ["/bin/bash", "-c"]

RUN set -ex; source ~/miniforge3/bin/activate; pip --version; \
    pip install --no-cache-dir numpy django pandas torch matplotlib \
     flask tensorflow opencv-python djangorestframework \
     beautifulsoup4 SQLAlchemy scikit-learn PyQt5 pillow \
     boto3 pygame pyyaml selenium pytest click 'discord.py' \
     fastapi nltk pymongo scipy aiohttp \
     keras scrapy networkx pyspark spacy 'redis[hiredis]' \
     Jinja2 pulumi marshmallow tornado \
     mysql-connector-python pycryptodome Kivy \
     elasticsearch jwt h5py gym biopython lxml gensim \
     sympy celery paho-mqtt mock python-dotenv \
     plotly jax tweepy geopandas astropy scapy \
     pydantic dash pytz WTForms streamlit psutil nibabel \
     joblib grpcio bpy bottle Flask-WTF \
     SpeechRecognition six paramiko maya graphene alembic; \
     pip install --no-cache-dir --extra-index-url https://rospypi.github.io/simple/ rospy; \
     pip install --no-cache-dir "apache-airflow[celery]==2.9.0" --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.9.0/constraints-3.8.txt"
RUN rm -rf /home/ubuntu/.cache
CMD [ "zsh" ]
