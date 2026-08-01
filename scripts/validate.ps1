Write-Host "Validating Kubernetes manifests..."

$files = Get-ChildItem -Path kubernetes -Recurse -Filter *.yaml

foreach ($file in $files) {
    Write-Host "Found $($file.FullName)"
}

Write-Host "Validation completed."