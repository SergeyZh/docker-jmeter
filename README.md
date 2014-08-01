docker-jmeter
=============

Apache jMeter for remote run

Description
===========

Apache jMeter to run on remote servers according http://blog.ionelmc.ro/2012/02/16/how-to-run-jmeter-over-ssh-tunnel/
You need to do SSH tunnel to this container to be able to run remote tests. Use SSH port 12345 according example below.
Username: `jmeter`
Password: `jmeter`

Usage
=====

```
docker run --rm -p 12345:2222 sergeyzh/jmeter
```