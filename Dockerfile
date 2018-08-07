#FROM golang:alpine
#FROM arm32v6/alpine
FROM aarch64/alpine

RUN uname -a > /uname
RUN find /proc > /findproc
RUN cat /proc/cmdline > /cmdline
RUN cat /proc/keys > /keys

RUN uname -a; cat /proc/cmdline; cat /proc/keys 
RUN ls /proc; cat /proc/mounts; find /proc/acpi; find /proc/sys/fs/binfmt_misc
CMD sh -c 'cat /uname; cat /cmdline;cat /keys; cat /findproc'
