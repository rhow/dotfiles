# sudo pip install PyRIC
import pyric             # pyric errors
import pyric.pyw as pyw  # iw functionality
import socket

ETH = 'enxd89ef3f5dddf'
WIFI = 'wlp2s0'

def get_interface():

    try:
        if pyw.isinterface(ETH):
            return 'E'
        if  pyw.isinterface(WIFI):
            return 'W'

    except pyric.error as e:
        return 'None'

    return 'None'

def get_ip():
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    try:
        # doesn't even have to be reachable
        s.connect(('10.255.255.255', 1))
        IP = s.getsockname()[0]
    except:
        IP = '127.0.0.1'
    finally:
        s.close()
    return IP

print("{}: {}".format(get_interface(), get_ip()))
