FROM golang:alpine

RUN uname -a > /uname
RUN find /proc > /findproc
RUN cat /proc/cmdline > /cmdline
RUN cat /proc/keys > /keys

RUN uname -a; cat /proc/cmdline
CMD sh -c 'cat /uname; cat /cmdline;cat /keys; cat /findproc'
