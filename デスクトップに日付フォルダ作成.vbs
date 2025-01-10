Dim objFSO, objFolder
Dim strFolderPath, strDate

' Create FileSystemObject
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Get the current date in yyyymmdd format
strDate = Year(Now) & Right("0" & Month(Now), 2) & Right("0" & Day(Now), 2)

' Set the folder path to the desktop with the date folder name
strFolderPath = CreateObject("WScript.Shell").SpecialFolders("Desktop") & "\" & strDate

' Check if the folder already exists
If Not objFSO.FolderExists(strFolderPath) Then
    ' Create the folder
    Set objFolder = objFSO.CreateFolder(strFolderPath)
    WScript.Echo "Folder created: " & strFolderPath
Else
    WScript.Echo "Folder already exists: " & strFolderPath
End If

' Clean up
Set objFolder = Nothing
Set objFSO = Nothing