#!/bin/bash

yum remove proftpd -y
yum install vsftpd -y
echo "chroot_local_user=YES
allow_writeable_chroot=YES
hide_file={hlds_*}
deny_file={hlds_*}" >> /etc/vsftpd/vsftpd.conf
service vsftpd start

echo "Done"
