#
# Cookbook:: bts_sudo
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
sudo 'bts_sudo' do
    user 'dvxadmin'
    commands ['/bin/ls',
    '/usr/bin/wc',
    '/bin/grep',
    '/bin/cat',
    '/usr/bin/tail',
    '/usr/bin/du',
    '/bin/df',
    '/bin/mkdir',
    '/bin/kill',
    '/usr/bin/killall',
    '/bin/chgrp',
    '/bin/chown',
    '/bin/chmod',
    'bin/touch',
    '/bin/vi /etc/hosts',
    '/bin/vi /etc/fstab',
    '/usr/bin/pstack',
    '/usr/bin/up2date',
    '/usr/bin/nohup',
    '/usr/bin/free',
    '/usr/bin/tail',
    '/usr/bin/xargs',
    '/usr/bin/whoami',
    '/usr/bin/whereis',
    '/usr/bin/zip',
    '/usr/bin/unzip',
    'usr/bin/curl',
    'usr/bin/wget',
    '/usr/bin/docker',
    '/usr/bin/netstat',
    '/usr/bin/systemctl',
    '/usr/sbin/service',
    '/sbin/fdisk',
    '/sbin/pvscan',
    '/sbin/vgscan',
    '/sbin/lvscan',
    '/sbin/pvcreate',
    '/sbin/vgcreate',
    '/sbin/lvcreate',
    '/sbin/mkfs.ext4',
    '/bin/mount'
]
end