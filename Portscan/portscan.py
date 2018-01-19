import socket

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(('bancocn.com', 80))
client.send('teste \n\n')
reposta = client.recv(1024)

print reposta
