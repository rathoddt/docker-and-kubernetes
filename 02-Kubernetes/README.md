# Kubernetes 

Setting up metrics server
```
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

For Windows PowerShell only
Set editor (current session)
$env:KUBE_EDITOR="code --wait"

Make it permanent (recommended)
[Environment]::SetEnvironmentVariable("KUBE_EDITOR", "code --wait", "User")

Get cpu and memory utilization
kubectl top pods
```