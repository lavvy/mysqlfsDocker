FROM centos:7
MAINTAINER mail@andreasbaumann.cc

RUN yum clean all
RUN yum update -y
RUN yum install -y wget cmake gcc fuse-devel mysql-devel unzip

RUN wget -O TEST.zip https://github.com/skeyby/mysqlfs/archive/TEST.zip

RUN unzip TEST.zip && cd mysqlfs-TEST && cmake . && make && make install
ENTRYPOINT ["/usr/local/bin/mysqlfs"]
