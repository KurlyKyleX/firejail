# Firejail profile for ansel
# Description: Non-destructive raw photography developer (Darktable fork)
# This file is overwritten after every install/update
# Persistent local customizations
include ansel.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/ansel
noblacklist ${HOME}/.config/ansel
noblacklist ${PICTURES}

# Allow lua (blacklisted by disable-interpreters.inc)
include allow-lua.inc

# Allow perl (blacklisted by disable-interpreters.inc)
include allow-perl.inc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-programs.inc
include disable-xdg.inc

caps.drop all
netfilter
nodvd
nogroups
noinput
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp

#private-bin ansel,exiftool,perl
private-dev
private-tmp

restrict-namespaces
