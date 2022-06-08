eksctl create cluster --name dev --version 1.21 --region us-east-1 --zones us-east-1a,us-east-1b,us-east-1c,us-east-1d,us-east-1f --nodegroup-name standard-workers --node-type t3.micro --nodes 4 --nodes-min 1 --nodes-max 5 --managed
aws eks update-kubeconfig --name dev --region us-east-1

kubectl create -f couchbase-autonomous-operator-kubernetes_2.2.3-linux-x86_64/crd.yaml
sleep 5
couchbase-autonomous-operator-kubernetes_2.2.3-linux-x86_64/bin/cbopcfg create admission
couchbase-autonomous-operator-kubernetes_2.2.3-linux-x86_64/bin/cbopcfg create operator
sleep 10
kubectl create -f couchbase-autonomous-operator-kubernetes_2.2.3-linux-x86_64/couchbase-cluster.yaml
