echo 'Generate the join command'
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi
sudo kubeadm token create --print-join-command > ./join.sh
echo 'Join command generated'