echo "Setting up the environment for the cluster"
sudo sysctl -w net.bridge.bridge-nf-call-ip6tables=1
sudo sysctl -w net.bridge.bridge-nf-call-iptables=1
sudo sysctl -w net.ipv4.ip_forward=1
sudo sysctl -w user.max_user_namespaces=28633
sudo sysctl -w net.ipv4.conf.all.rp_filter=0
apt install -y ipset ipvsadm
sudo modprobe br_netfilter
sudo modprobe nf_conntrack
sudo modprobe ip_vs
sudo modprobe ip_vs_rr
sudo modprobe ip_vs_wrr
sudo modprobe ip_vs_sh
sudo modprobe overlay
cp ./config.toml /etc/containerd/config.toml
systemctl restart containerd
echo "Environment setup complete"