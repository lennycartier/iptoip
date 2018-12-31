#! /bin/sh

# Install Code.
cp iptoip /usr/local/sbin
cp iptoip.init /etc/init.d/iptoip
# Install Documentation.
cp iptoip.8 /usr/local/man/man8
cp iptoip.xml.5 /usr/local/man/man5
mkdir -p /usr/local/share/iptoip
cp iptoip.xml install.sh ipvsrate.sh /usr/local/share/iptoip
mkdir -p /usr/local/share/doc/iptoip
cp AUTHORS CHANGELOG COPYING LICENSE README README.md TODO /usr/local/share/doc/iptoip
# Setup Runtime.
chkconfig -a iptoip
