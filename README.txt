Silent Copy
-------------------

A set of batch files that copy the contents of a USB drive as soon as it's inserted , silently.

It contains : 

1. copy.cmd - The batch file that carries out the copy command. Edit this to change the source ( USB Drive name) and the destination.

2. hide.cmd - This batch files works with invisible.vbs. This runs copy.cmd silently (without any window or taskbar popup).

3. invisible.vbs - This Visual Basic script uses WScript commands to hide the command prompt window.

4. DriveChk.vbs - This Visual Basic script uses WScript commands to check whether a USB drive with the specified path name ( H in my case) is inserted or not.
You need to run this file before the USB drive is inserted. It automatically checks for the drive after a specified time period. When a USB is inserted , it runs hide.cmd.
Change the USB pathname in this file.

How To Use :
----------------------

1. Change the USB path ( source )  and destination in copy.cmd.
2. Set the locations for invisible.vbs and copy.cmd in hide.cmd.
3. Set the USB path (drive letter) in DriveChk.vbs and the location of hide.cmd.
4. Run DriveChk.vbs.
5. As soon as you insert a USB drive , it copies the contents into the destination discretely.
