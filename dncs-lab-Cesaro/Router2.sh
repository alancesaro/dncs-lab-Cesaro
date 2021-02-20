export DEBIAN_FRONTEND=noninteractive
# Startup commands go here

sudo sysctl -w net.ipv4.ip_forward=1

sudo ip addr add 11.0.0.2/30 dev enp0s9
sudo ip link set dev enp0s9 up

sudo ip addr add 192.168.4.1/24 dev enp0s8
sudo ip link set dev enp0s8 up

sudo ip route add 192.168.0.0/22 via 11.0.0.1
