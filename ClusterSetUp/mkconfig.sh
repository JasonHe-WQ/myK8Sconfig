mkdir -p $HOME/.kube
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi
sudo mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config