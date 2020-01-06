######### Variables ##########

$Filename = [System.IO.Path]::GetRandomFileName() + ".txt" # Generate a random filename
$DocumentPath = [Environment]::GetFolderPath("MyDocuments") + "\"
$FileLocation = $DocumentPath + $Filename

########## Main #############

if (!$args[0]) {
    Write-Host "Please provide a value, eg : 2000000 for 2MB"
} else {
    fsutil file createnew $FileLocation $args[0]
}