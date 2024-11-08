prompt "Connect to:"; de$
nomainwin
WindowWidth = 300
WindowHeight = 350
statictext #liv.con, "Connected to: "; de$; " ", 5, 5, 290, 20
statictext #liv.cnd, "Condition: Stable", 5, 75, 290, 20
textbox #liv.cod, 5, 25, 281, 20
button #liv.sen, "Send Code to Computer", [sen], UL, 5, 50, 281, 20
texteditor #liv.pro, 5, 95, 281, 200
open "Live Computer Commander" for window as #liv
select case int(rnd(1)*5)
case 1
ras$ = "Norton Internet Security, and System Works, D-Link Router"
case 2
ras$ = "None"
case 3
ras$ = "McAfee Antivirus, Firewall, Email Scanner, Quest Cable Scanner"
case 4
ras$ = "Full Norton Utilities, PMT Cable Bridge, and Router"
case 5
ras$ = "ZoneAlarm Firewall, Advast Antivirus, Windows Email Scanner"
end select
print #liv.pro, ras$
print #liv.pro, "  "
print #liv.cod, "!setfocus"
[livloop]
wait
print #liv, "trapclose[livx]"
[livx]
close #liv
end
[sen]
print #liv.cod, "!contents? fe$"
if fe$ = "close" then goto [livx] else [tub]
[tub]
print #liv.pro, fe$
print #liv.pro, "Sending..."
call Pause 347
print #liv.pro, "Sent and Accepted"
beep
print #liv.pro, "   "
print #liv.cod, ""
goto [livloop]
sub Pause mil
t=time$("milliseconds")
while time$("milliseconds")<t+mil
wend
end sub







