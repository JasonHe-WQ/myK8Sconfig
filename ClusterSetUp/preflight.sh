echo "Preflight checks"
kubeadm init --config ./kubeadm-config.yaml --dry-run >./dryrun.log 2>./error.log
echo "Preflight checks complete"