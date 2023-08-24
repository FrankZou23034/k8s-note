ls -ltr
sudo su -
sudo setenforce 0
sudo sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
sudo firewall-cmd --zone=public --add-port=10250/tcp --permanent
sudo firewall-cmd --zone=public --add-port=30000-32767/tcp --permanent
sudo firewall-cmd --reload
sudo reboot
sudo swapoff -a
sudo yum install -y conntrack ntpdate ntp ipvsadm ipset jq iptables curl sysstat libseccomp wget 
sudo yum remove docker                   docker-client                   docker-client-latest                   docker-common                   docker-latest                   docker-latest-logrotate                   docker-logrotate                   docker-engine
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install containerd.io
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter
# sysctl params required by setup, params persist across reboots
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables  = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward                 = 1
EOF

# Apply sysctl params without reboot
sudo sysctl --system
lsmod | grep br_netfilter
lsmod | grep overlay
sysctl net.bridge.bridge-nf-call-iptables net.bridge.bridge-nf-call-ip6tables net.ipv4.ip_forward
sudo rm  /etc/containerd/config.toml
sudo systemctl restart containerd
sudo systemctl enable containerd
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/v1.28/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/v1.28/rpm/repodata/repomd.xml.key
exclude=kubelet kubeadm kubectl cri-tools kubernetes-cni
EOF

sudo yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes
sudo systemctl enable kubelet
sudo systemctl enable --now kubelet
sudo firewall-cmd --list-ports
systemctl status containerd
systemctl status kubelet
ping k8sadm
sudo vi /etc/hosts
ping k8sadm
sudo yum install wget
conntrack 
yum install -y conntrack
sudo yum install -y conntrack
sudo yum install tar
sudo yum install wget
kubeadm --help
systemctl status kubelet
systemctl status containerd
top
sudo kubeadm join 192.168.80.2:6443 --token 07y2ti.jy5t7h8ps7j6vlue         --discovery-token-ca-cert-hash sha256:0f96c2fa124840ce3993f77e085780ce1a83899f190e66e707ba9b84164f08ff 
history -w
