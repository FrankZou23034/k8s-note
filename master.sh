ip a
sudo su -
vi /etc/fstab 
sudo vi /etc/fstab 
lsblk
top
ls -ltr
lsblk
sudo yum update
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-\$basearch
enabled=1
gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
exclude=kubelet kubeadm kubectl
EOF

cat /etc/yum.repos.d/kubernetes.repo
history 
cat /etc/yum.repos.d/kubernetes.repo
sudo vi /etc/yum.repos.d/kubernetes.repo
sudo reboot
df -h
lsblk
sudo swapoff -a
sudo yum install -y kubectl
sudo vi /etc/yum.repos.d/kubernetes.repo
sudo yum install -y kubectl
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/v1.28/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/v1.28/rpm/repodata/repomd.xml.key
EOF

sudo vi /etc/yum.repos.d/kubernetes.repo
sudo yum install -y kubectl
sudo yum install bash-completion
source /usr/share/bash-completion/bash_completion
vi .bashrc 
nc 127.0.0.1 6443
sudo yum install nc
nc 127.0.0.1 6443
firewall-cmd --zone=public --add-port=6443/tcp --permanent
sudo firewall-cmd --zone=public --add-port=6443/tcp --permanent
sudo firewall-cmd --reload
nc 127.0.0.1 6443
ls -ltr
cat /etc/yum.repos.d/kubernetes.repo
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-\$basearch
enabled=1
gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
exclude=kubelet kubeadm kubectl
EOF

cat /etc/yum.repos.d/kubernetes.repo
sudo setenforce 0
sudo sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
sudo sestatus
sudo reboot
ip a
ping 8.8.8.8
ip a
sudo su -
ip a
ping ls -ltr
ping quay.io
ping www.quay.io
ping www.google.com
ping www.google.com.tw
yum update
sudo yum update
ip a
sudo shutdown
sudo shutdown -h 
sudo shutdown -h 0
cat /etc/sysconfig/network-scripts/ifcfg-eth0
cat /etc/hosts
sudo vim /etc/hosts
sudo su -
sudo vi /etc/hosts
cat /etc/hosts
setenforce 0
sestatus
history 
cat /etc/fstab 
sudo firewall-cmd --list
sudo firewall-cmd --list-port
sudo firewall-cmd --zone=public --add-port=2379-2380/tcp --permanent
sudo firewall-cmd --zone=public --add-port=10250/tcp --permanent
sudo firewall-cmd --zone=public --add-port=10259/tcp --permanent
sudo firewall-cmd --zone=public --add-port=10257/tcp --permanent
sudo firewall-cmd --reload
sudo swapoff -a
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
cat /etc/containerd/config.toml
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
kubectl --help
source /usr/share/bash-completion/bash_completion
systemctl status containerd
systemctl status kubelet
ping k8sw1
cat /etc/hosts
wget https://github.com/kubernetes-sigs/cri-tools/releases/download/v1.28.0/crictl-v1.28.0-linux-amd64.tar.gz
sudo tar zxvf crictl-v1.28.0-linux-amd64.tar.gz -C /usr/local/bin
sudo yum install wget
conntrack 
sudo yum install -y conntrack
wget https://github.com/kubernetes-sigs/cri-tools/releases/download/v1.28.0/crictl-v1.28.0-linux-amd64.tar.gz
sudo tar zxvf crictl-v1.28.0-linux-amd64.tar.gz -C /usr/local/bin
yum install tar
sudo yum install tar
sudo tar zxvf crictl-v1.28.0-linux-amd64.tar.gz -C /usr/local/bin
wget https://docs.projectcalico.org/manifests/calico.yaml
sudo kubeadm config images list 
cat /proc/sys/net/ipv4/ip_forward 
sudo kubeadm init --pod-network-cidr=10.224.0.0/16 --apiserver-advertise-address=192.168.80.2
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f calico.yaml 
kubectl get nodes
top
kubectl get nodes
kubectl describe nodes k8sw1
top
free -h
kubectl get pods
kubectl get pods -o wide
kubectl get all -o wide
history -w
cd /etc/bash_completion.d
sudo touch kubectl
sudo chmod 777 kubectl
cd
kubectl completion bash >/etc/bash_completion.d/kubectl
cd /etc/bash_completion.d/
cat kubectl 
sudo chmod 644 kubectl 
