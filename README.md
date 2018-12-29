# iptoip

A tool designed to setup and maintain the IPVS table on Linux hosts.

Written in perl and using an XML configuration file in conjunction with the 
`ipvsadm` tool, `iptoip` maintains the IPVS table configuration across reboots 
or IP address changes.
Useful for maintaining an IPVS table on a dynamic IP address or intermittent 
connection.

For example:
Your public IP is X.
You forward http traffic (port 80) via IPVS to an internal host Z.
Your public IP changes to Y.
You can run `iptoip` to update your IPVS table to the new IP without changing 
configuration files or rewriting IPVS rules. :smile:
