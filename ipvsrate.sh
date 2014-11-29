#! /bin/sh
# Copyright (C) 2009-2014 Nathan Gibbs <nathan@cmpublishers.com>
# A Script that reports the IPVS counters via email and then resets them.

# Intended to be run daily by cron.
# Be sure to adjust the reporting email address.

ipvsadm -ln --sort --stats|egrep "^(TC|UD)P"|mail -s "Daily Flow Report" noc@example.com
ipvsadm -Z
