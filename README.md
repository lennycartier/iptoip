<!--README.md file for Github Repo-->
# iptoip

A tool designed to setup and maintain the IPVS table on Linux hosts.

Written in perl and using an XML configuration file in conjunction with the 
`ipvsadm` tool, `iptoip` maintains the IPVS table configuration across reboots 
or IP address changes.
Useful for maintaining an IPVS table on a dynamic IP address or roaming 
connection.

## For example:
* You have a public IP.
* You forward TCP or UDP traffic via IPVS to internal host(s).
* Your public IP changes.
* Run `iptoip` to update your IPVS table to the new IP without changing 
configuration files or rewriting IPVS rules. :smile:
