FROM samueldebruyn/debian-git:latest

RUN apt-get update -yq && apt-get install -yqq \
    python

RUN git clone https://github.com/Sanais/docker_project docker
CMD cd /docker && git pull

CMD python docker_project/script2.py

