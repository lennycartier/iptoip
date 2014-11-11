iptoip
======

perl script to maintain an ipvsadm table coherent

It is specially useful when using an intermittent internet connection or when your ISP breaks connections to reaffect IP addresses (ie in France). 
It use the ipvsadm tool to build and update a forwarding table.

The program is written in perl; uses a configuration file to know which interface to use, which port to forward, and to which box in the internal network. For example your external ip is xxx.xxx.xxx.xxx and you forward the http default port (80) to the computer zzz.zzz.zzz.zzz in your internal network. Everytime you've got a new public ip you should launch iptoip to update your ipvsadm table with your new ip yyy.yyy.yyy.yyy:80 to zzz.zzz.zzz.zzz:80 