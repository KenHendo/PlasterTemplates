# Generic Module file that recursively loads all functions contained in 'public' and 
# 'private' subfolders, then exports only the public functions.

Get-ChildItem *.ps1 -path public, private -Recurse | ForEach-Object {
    . $_.FullName
}
    
Get-ChildItem *.ps1 -path public -Recurse | ForEach-Object {
    Export-ModuleMember $_.BaseName
}