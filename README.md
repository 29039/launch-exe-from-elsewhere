# launch-exe-from-elsewhere
Make a LNK shortcut to this program to then launch an EXE which is actually somewhere else. 

Useful to get Windows "Pin to Start Menu" or Taskbar options to actually work for an EXE in an unsupported location such as a UNC Path

Also useful if the program requires some special environment variable to work (editing the AHK and running ahk2exe is required for that one)

Disclaimer:

Strictly "AS IS" and you should really back up the files you are using this with. If you don't know what you're doing then don't use it.


Instructions:
1. Make a Shortcut to this exe
2. At the end of the Target, make a space and then add the name of your program i.e. myapp.exe
3. Change the 'Start in' to the folder where yourprogram is located i.e. \\SERVER\Apps
4. Optional/Recommended: Set the icon to point to your app

Note: Doesn't support programs which need an actual different WorkingDir to run, edit the source code for that

Download:

https://github.com/29039/launch-exe-from-elsewhere/releases

Tips:
- You can open a Folder in Explorer by specifying a space and then a period (" .") at the end of the Target
- You can still pass parameters at the end of myapp.exe

Credits:

Made with AutoHotKey

Icon from: https://www.iconfinder.com/icons/2191531/best_fast_flash_good_light_speed_icon (Which has it's own license)
