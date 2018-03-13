$files = Get-ChildItem "C:\Users\Administrator\Downloads\Updates\"
foreach($file in $files){& $file.FullName /quiet /extract:"C:\Users\Administrator\Downloads\Updates\MSP\"}
