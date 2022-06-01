##### update aws
aws --version
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install --bin-dir /usr/bin --install-dir /usr/bin/aws-cli --update
aws --version

##### install kubectl
#curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.16.8/2020-04-16/bin/linux/amd64/kubectl
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.22.6/2022-03-09/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin
kubectl version --short --client

##### install eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/bin
eksctl version
eksctl help

##### install minikube
#curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
#sudo rpm -Uvh minikube-latest.x86_64.rpm
#minikube start --cpus 1 --memory 6000

##### Download couchbase package
wget https://packages.couchbase.com/couchbase-operator/2.3.0/couchbase-autonomous-operator_2.3.0-kubernetes-linux-amd64.tar.gz
tar -xf couchbase-autonomous-operator_2.3.0-kubernetes-linux-amd64.tar.gz

aws --version
kubectl version --short --client
eksctl version
ll
