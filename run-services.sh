#!/bin/sh

shutdown_jmeter()
{
    echo "Stopping container..."
    /sbin/service sshd stop
    killall java
    exit 0
}

trap shutdown_jmeter SIGINT SIGTERM SIGHUP

/sbin/service sshd start

touch /home/jmeter/apache-jmeter-2.11/bin/jmeter-server.log

cd /home/jmeter/apache-jmeter-2.11/bin ; ./jmeter-server -Dserver.rmi.localport=55511 -Dserver_port=55501 -Dserver.rmi.localhostname=127.0.0.1 -Djava.rmi.server.hostname=127.0.0.1 &

tail -f /home/jmeter/apache-jmeter-2.11/bin/jmeter-server.log &

wait
