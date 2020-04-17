# Firejail profile for jitsi-meet-desktop
# Description: Build cross platform desktop apps with web technologies
# This file is overwritten after every install/update
# Persistent local customizations
include jitsi-meet-desktop.local
# Persistent global definitions
include jitsi-meet-desktop.local

noblacklist ${HOME}/.config/Jitsi Meet

include disable-common.inc
include disable-passwdmgr.inc
include disable-programs.inc

whitelist ${DOWNLOADS}
mkdir ${HOME}/.config/Jitsi Meet
whitelist ${HOME}/.config/Jitsi Meet

apparmor
caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6,netlink
seccomp !chroot

private-tmp
