FROM sergeyzh/centos6-java

MAINTAINER Sergey Zhukov, sergey@jetbrains.com

RUN mkdir /home/jmeter ; cd /home/jmeter/ ; wget http://apache-mirror.rbc.ru/pub/apache/jmeter/binaries/apache-jmeter-2.11.tgz ; \
    tar -xzf apache-jmeter-2.11.tgz ; rm apache-jmeter-2.11.tgz

CMD cd /home/jmeter/apache-jmeter-2.11/bin ; ./jmeter-server -Dserver.rmi.localport=4000

EXPOSE 1099 4000

