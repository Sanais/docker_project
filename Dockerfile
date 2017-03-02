FROM samueldebruyn/debian-git:latest

RUN apt-get update -yq && apt-get install -yqq \
    python \
    emacs

RUN git clone https://github.com/DidelotK/docker docker
CMD cd /docker && git pull

CMD python docker/script.py

