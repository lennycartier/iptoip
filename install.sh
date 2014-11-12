#! /bin/sh
cp iptoip.8 /usr/local/man/man8
cp iptoip.xml.5 /usr/local/man/man5
cp iptoip /usr/local/sbin
cp iptoip.init /etc/init.d/iptoip
chkconfig -a iptoip