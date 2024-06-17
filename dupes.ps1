# Define the root directory to search for duplicates. This example uses a mapped network drive "M:".
$dir = "M:\"

# Get all files in the directory, calculate their SHA256 hashes, and group them by hash.
Get-ChildItem $dir -File | Get-FileHash | Group-Object Hash | 
    # Filter for groups with more than one file (i.e., duplicates).
    Where-Object { $_.Count -gt 1 } | 
    ForEach-Object {
        # For each group of duplicates, skip the first file (the original) and delete the rest.
        $_.Group | Select-Object -Skip 1 | ForEach-Object {
            Write-Output "Deleting file: $($_.FullName)"
            Remove-Item $_.FullName
        }
    }
