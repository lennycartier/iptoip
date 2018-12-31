#! /bin/sh
# Copyright (C) 2009-2018 Nathan Gibbs <nathan@cmpublishers.com>
# Report the IPVS counters via email and then reset them.

# Intended to be run by cron.
# Be sure to change the reporting email address.

ipvsadm -ln --sort --stats|egrep "^(TC|UD)P"|mail -s "Daily Flow Report" noc@example.com
ipvsadm -Z
