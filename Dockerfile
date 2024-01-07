FROM ubuntu:22.04

WORKDIR /workspace

RUN apt update

RUN apt install -y clang git make

RUN git clone https://github.com/dzaima/CBQN.git

WORKDIR /workspace/CBQN

RUN make \
    && make install

WORKDIR /code

COPY bin .

CMD "./hello.bqn"