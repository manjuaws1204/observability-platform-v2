Write-Host "========================================="
Write-Host "Enterprise Observability Validation"
Write-Host "========================================="

Write-Host ""

Write-Host "Checking kubectl..."

kubectl version --client

Write-Host ""

Write-Host "Checking Cluster..."

kubectl get nodes

Write-Host ""

Write-Host "Checking Namespace..."

kubectl get ns

Write-Host ""

Write-Host "Searching Kubernetes YAML files..."

$files = Get-ChildItem -Path kubernetes -Recurse -Filter *.yaml

if ($files.Count -eq 0) {
    Write-Host "No Kubernetes manifests found."
}
else {
    foreach ($file in $files) {
        Write-Host "Found: $($file.FullName)"
    }
}

Write-Host ""

Write-Host "Validation Complete."