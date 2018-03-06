  $menuPrompt=$title
 #add a return
 $menuprompt+=”`n”
 #add an underline
 $menuprompt+=”-”*$title.Length
 $menuprompt+=”`n”
 #add the menu
 $menuPrompt+=$menu
 
Read-Host -Prompt $menuprompt
 
}  #end function
 
#define a menu here string
 $menu=@”
1. valg 1
 
2. valg 2
 
Q. Quit.
 
Select a task by number or Q to quit
“@
 
#Keep looping and running the menu until the user selects Q (or q).
 Do {
 #use a Switch construct to take action depending on what menu choice
 #is selected.
 Switch (Show-Menu $menu ” XenMaster er klar for å seales ” ){

"1" {write-host 'valg 1'}

"2" {write-host 'valg 2'  -ForegroundColor Red}

"Q" {Write-Host “Terminating Script” -ForegroundColor Yellow
 Return
 }
 Default {Write-Warning “Invalid Choice. Try again.”
sleep -milliseconds 750}
 } #switch
 }While ($True)
 
