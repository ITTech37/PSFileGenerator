######### Variables ##########

$Filename = [System.IO.Path]::GetRandomFileName() + ".txt" # Generate a random filename
$DocumentPath = [Environment]::GetFolderPath("MyDocuments") + "\" # Find your default Documents folder location
$FileLocation = $DocumentPath + $Filename
$FileSize = "$args" + "000000" # Convert user input number in MegaBytes

########### Main #############

if (!$args[0]) {
    Write-Host "Please provide a value, eg : 2 for 2MB"
} else {
    fsutil file createnew $FileLocation $FileSize # Generate file
}