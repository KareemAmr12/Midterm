FROM ubuntu
COPY ./code /project
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get istall gcc g++ -y
WORKDIR /root
RUN g++ hello_world.cpp -o h
ENTRYPOINT ./h
