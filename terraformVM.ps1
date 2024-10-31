param (
    [string]$RepoName
)

# Base URL for the Git repository
$baseGitUrl = "https://github.com/YasGuy/"

# Construct the full Git repository URL
$GitRepoUrl = $baseGitUrl + $RepoName + ".git"

# Check if RepoName is provided
if (-not $RepoName) {
    Write-Output "Error: Repository name is required."
    exit 1
}
# Define variable for the directory to clone into
$localPath = "D:\terraform"

# Define a location for the terraform executable (assuming it is installed and in PATH)
$terraformExec = "terraform"

# Clone the repository
Write-Output "Cloning repository from $GitRepoUrl to $localPath..."
git clone $GitRepoUrl $localPath

# Navigate to the Terraform configuration directory
Set-Location -Path $localPath

# Initialize Terraform
Write-Output "Initializing Terraform..."
& $terraformExec init

# Optional: Validate the Terraform configuration
Write-Output "Validating Terraform configuration..."
& $terraformExec validate

# Apply the Terraform configuration
Write-Output "Applying Terraform configuration..."
& $terraformExec apply -auto-approve

# Navigate out of the directory before deletion
Set-Location -Path "D:\"

# Delete the directory to remove all Terraform state and temporary files
Write-Output "Deleting the cloned directory and all Terraform state files..."
Remove-Item -Recurse -Force -Path $localPath

# Output completion message
Write-Output "Terraform configuration applied, and directory cleaned up successfully."
