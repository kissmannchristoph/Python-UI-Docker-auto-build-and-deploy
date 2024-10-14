FROM transactcharlie/docker-nuitka:latest as builder

MAINTAINER Charlie Gildawie <charles.gildawie@gmail.com>
LABEL org.label-schema.name="Hello World Example" \
      org.label-schema.vcs-url="https://github.com/TransactCharlie/nuitka-docker-example" \
      org.label-schema.description="Full example App compiled with nuitka in a scratch docker container"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install patchelf python3-tk -y
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
COPY ./scripts /scripts
RUN chmod +x /scripts/build.sh
#RUN nuitka3 --standalone --show-progress --python-flag=no_site src/app.py
#COPY --from=builder . .
