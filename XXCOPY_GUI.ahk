;Created by Rasim Rasulov aka ras223
; /BB ne perezapisyvat /BI incrementally,(by time/size)files only
; /TC save date /SZ:-<m> Copies a file whose size is equal to or less than m bytes
; /L emulatiya /PBH progress bar /WS/WE podtverdit Y N /JL0 simlink
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
xxcopy="E:\13PF\XXCOPY.3.21.6.Pro\Pixelab.XXcopy.Pro.v3.21.6.x64-DVT\d-000pi\xxcopy.exe"

ChBox1="C:\Users\223\Desktop\icon" "C:\Users\223\Desktop\icon_2" /BU/TC/EC/WE/Q1/FoCOPIED.TXT
ChBox2=
ChBox3="E:\13PF\thunderbird" "\\Tp-Link\13PF\thunderbird" /Y/D/S/H/TC/BI
ChBox4="E:\13PF\AkelPad" "\\Tp-Link\13PF\AkelPad" /Y/D/S/H/TC/BI
ChBox5="E:\13PF\XY" "\\Tp-Link\13PF\XY" /Y/D/S/H/TC/BI /X"E:\13PF\XY\Data\Thumbnails"
ChBox6=
ChBox7="C:\Users\223\Desktop\icon" "C:\Users\223\Desktop\icon_2" /Y/D/S/H/TC/EC/F0/WS/WE/BB /FoCOPIED.TXT /oNlist.txt
ChBox8="C:\Users\223\Desktop\icon" "C:\Users\223\Desktop\icon_2" /RD/BU/TC/WS/WE12
ChBox9="D:\torent" "\\Tp-Link\13PF\torrent2\torent" /Y/D/S/H/TC/BB/DA#60d
ChBox10="\\Tp-Link\01DOCS" "E:\01DOCS" /Y/D/S/H/TC/JL0/PBH/WE/VL1000/BB/DA#60d
ChBox11="E:\01DOCS" "\\Tp-Link\01DOCS" /Y/D/S/H/TC/JL0/PBH/WE/VL1000/BB/Q1/DA#60d

Gui Add, CheckBox, x8 y40 w442 h39  vCl1 checked,1"C:\Users\223\Desktop\icon_2" perezapisyvat
Gui Add, CheckBox, x8 y80 w442 h39  vCl2, 2"C:\Users\223\Desktop\icon_2" perezapisyvat
Gui Add, CheckBox, x8 y120 w442 h39 vCl3, 3"E:\13PF\thunderbird" "\\Tp-Link\13PF\thunderbird" /CLONE
Gui Add, CheckBox, x8 y160 w442 h39 vCl4, 4"E:\13PF\AkelPad" "\\Tp-Link\13PF\AkelPad"
Gui Add, CheckBox, x8 y200 w442 h39 vCl5, 5"E:\13PF\XY" "\\Tp-Link\13PF\XY"
Gui Add, CheckBox, x8 y240 w442 h39 vCl6, 6"E:\*.xys"
Gui Add, CheckBox, x8 y280 w442 h39 vCl7, 7"C:\Users\223\Desktop\icon_2\" ne perezapisyvat
Gui Add, CheckBox, x8 y320 w442 h39 vCl8, 8"C:\Users\223\Desktop\icon_2"/TC/BACKUP perezapis
Gui Add, CheckBox, x8 y360 w442 h39 vCl9, 9"E:\13PF\torrent2\torent" "\\Tp-Link\13PF\torent"
Gui Add, CheckBox, x8 y400 w442 h39 vCl10,10"\\Tp-Link\01DOCS" "E:\01DOCS"/DA#60d
Gui Add, CheckBox, x8 y440 w442 h39 vCl11,11"E:\01DOCS" "\\Tp-Link\01DOCS"/DA#60d
Gui Add, Button, x340 y490 w77  h39 gStart, Start
Gui Add, Button, x250 y490 w77  h39 gEmulatiya, Emulatiya
Gui Add, Button, x160 y490 w77  h39 gAkelpad, Akelpad

Gui, Color, EEAA99
Gui Show, w430 h550, GUI_for_XXCOPY
Return

Start:
loop 11
{
GuiControlGet, var%A_Index%, , Cl%A_Index%
if var%A_Index% = 1
;MsgBox, var%A_Index%
	{
	rr:=ChBox%A_Index%
	;MsgBox, "%xxcopy% %rr% %emu%"
	run %A_ComSpec% /k "%xxcopy% %rr%%emu%"
	}
}
emu=
Return

;======================
Emulatiya:	
emu=/L
GoSub, Start
Return
;======================
AkelPad:
Run Edit %A_ScriptFullPath%
Return

;======================	
GuiEscape:
GuiClose:
	ExitApp
	
	
	
	
	
GuiControlGet, var1, , Cl1
if var1 = 1
{
	
}
GuiControlGet, var2, , Cl2
if var2 = 1
{
	run %A_ComSpec% /k "%xx% "E:\13PF\torrent2\torent" "\\Tp-Link\13PF\torrent2\torent"   /Y/D/S/H/TC/BB"
}
GuiControlGet, var3, , Cl3
if var3 = 1
{
	run %A_ComSpec% /k "%xx% "E:\13PF\AkelPad" "\\Tp-Link\13PF\AkelPad" /Y/D/S/H /BI/TC"
}
GuiControlGet, var4, , Cl4
if var4 = 1
{
	run %A_ComSpec% /k "%xx% "E:\13PF\XY" "\\Tp-Link\13PF\XY" /Y/D/S/H /BI/TC /X"E:\13PF\XY\Data\Thumbnails""
}
GuiControlGet, var5, , Cl5
if var5 = 1
{
	run %A_ComSpec% /k "%xx% "E:\*.ahk" "E:\icon_2" /Y/D/S/H/TC /DA#30d /SZ:-1000"
}
GuiControlGet, var6, , Cl6
if var6 = 1
{
	run %xx% "C:\Users\223\Desktop\icon" "C:\Users\223\Desktop\icon_2" /Y/D/S/H/TC /EC/F0/WS/WE/BB /FoCOPIED.TXT /oNlist.txt
}
GuiControlGet, var7, , Cl7
if var7 = 1
{
	run %xx% "C:\Users\223\Desktop\icon" "C:\Users\223\Desktop\icon_2" /BACKUP/TC/WS/WE12    /x:"C:\Users\223\Desktop\icon\python-gui-demos-master\"
}


;GuiEscape:
;GuiClose:
;	ExitApp
