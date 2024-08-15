echo "Installation"
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi
if [ ! -f ./kubeadm-config.yaml ]; then
  echo "kubeadm-config.yaml not found"
  exit 1
fi
sudo kubeadm init --config ./kubeadm-config.yaml  >./install.log 2>./error.log
echo "Installation complete"