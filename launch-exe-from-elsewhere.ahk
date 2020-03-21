; For apps which require an environment variable passed, optional
StringUpper, UserName, A_UserName
EnvSet, ClientName, % "1" . UserName

; If no arguments passed
if A_Args.Length() < 1
{
    MsgBox, 0, launch-exe-from-elsewhere, % "Usage: `n"
. "1. Make a Shortcut to this exe`n" 
. "2. At the end of the Target, make a space and then add the name of your program i.e. myapp.exe`n"
. "3. Change the 'Start in' to the folder where yourprogram is located `ni.e. \\SERVER\Apps`n" 
. "4. Optional/Recommended: Set the icon to point to your app`n"
. "`nNote: Doesn't support programs which need an actual different WorkingDir to run, edit the source code for that"
    ExitApp
}

; Get the arguments, first one is the program to launch
for n, param in A_Args  ; For each parameter:
{
myParams1 .= param . " "
}

; removes trailing space
myParams1 = %myParams1%

; https://www.autohotkey.com/docs/commands/Run.htm
Run, % myParams1, % A_WorkingDir