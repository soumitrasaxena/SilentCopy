set fso=CreateObject("Scripting.FileSystemObject")
set WshShell=CreateObject("WScript.Shell")
 
usbdrive="H"
batchfile="C:\Users\Soumitra\Desktop\hide.cmd"
 
do
    if drivechk(usbdrive)<>"" then exit do
    wscript.sleep 1000
loop
 
WshShell.run "cmd /c " & batchfile
 
function drivechk(d)
    on error resume next
    set chk=fso.getDrive(d)
    if err.number then err.clear:exit function
    drivechk=chk.path
end function