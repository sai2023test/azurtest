# Install Minikube
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod 755 /usr/local/bin/minikube

# Start Minikube
sudo minikube start --driver=none

# Configure kubectl
sudo cp /root/.kube/config /home/your_user/.kube/config
sudo chown -R your_user:your_user /home/your_user/.kube/
