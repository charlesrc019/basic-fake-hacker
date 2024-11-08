'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
jimmy = 3
[stat]
nomainwin
[quad]
if jimmy = 3 then goto [begin] else [remwn]
[remwn]
enter$ = chr$(_VK_RETURN) : backspace$ = chr$(_VK_BACK)
bs = 2
WindowWidth = 140 : WindowHeight= 60
UpperLeftX = (DisplayWidth-WindowWidth)/2
UpperLeftY = (DisplayHeight-WindowHeight)/2
graphicbox #pass.gb, 0,0,0,0
textbox #pass.tb, 1,10,130,20
open "Password" for window as #pass
print #pass, "trapclose [quitpass]"
print #pass, "font courier_new 10 bold"
print #pass.gb, "setfocus"
print #pass.gb, "when characterInput [letter]"
timer 400, [t]
resx = 0
wait
[t]
if enter = 1 then timer 0 : goto [ok]
print #pass.gb, "setfocus"
wait
[letter]
timer 0
key$ = Inkey$ : key$ = left$(Inkey$, 2) : vkey$ = right$(key$,1)
if vkey$ <> enter$ and vkey$ <> backspace$ then
b$ = b$ + key$ : b = len(b$) : fill$ = ""
for x = 1 to b:fill$ = fill$ + "*" : next x
print #pass.tb, fill$ : print #pass.gb, "setfocus"
end if
if vkey$ = enter$ then enter = 1
if vkey$ = backspace$ and bs = 2 then
b = len(b$) : b=b-1 : b$ = left$(b$,b) : fill$ = ""
for x = 1 to b : fill$ = fill$ + "*" : next x
print #pass.tb, fill$ : print #pass.gb, "setfocus"
bs = bs +1: if bs = 3 then bs = 1 else if bs = 1 then bs = 2
end if : timer 400, [t]
wait
[quitpass]
close #pass
goto [stat]
end
[ok]
timer 0
if b$ = "123 declo rocks" then
close #pass
goto [note]
else
notice " " + chr$(13) + "Incorrect Password!" : print #pass.tb, ""
resx = resx + 1
print #pass.gb, "setfocus" : b$ = "" : enter = 0 : timer 400, [t]
end if
goto [t]
[note]
if resx = 0 then
goto [begin]
else
notice "  " + chr$(13) + "Incorrect Password Entered "; resx ;" times."
end if
[begin]
WindowHeight = 301
WindowWidth = 400
textbox #main.ent, 5, 5, 195, 20
button #main.sen, "Connect", [con], UL, 5, 30, 195, 20
button #main.wec, "Access Webcam", [wec], UL, 5, 123, 195, 20
button #main.vir, "Send Virus to Computer", [vir], UL, 5, 98, 195, 20
button #main.rit, "Write Code String / Script", [rit], UL, 5, 148, 195, 20
button #main.line, "Run / Send Script", [line], UL, 5, 173, 195, 20
button #main.src, "Get Screenshot" , [src], UL, 5, 198, 195, 20
button #main.ema, "Get E-mail Files", [ema], UL, 5, 223, 195, 20
button #main.paws, "Get and Save Passwords", [condec], UL, 5, 248, 195, 20
button #main.liv, "Live Computer Controler", [liv], UL, 205, 5, 183, 20
button #main.typ, "Activate Keylogger", [typ], UL, 205, 30, 183, 20
button #main.blu, "Bounce Computer Location", [blu], UL, 205, 54, 183, 16
button #main.sec, "Lock-up Computer", [sec], UL, 205, 74, 183, 17
button #main.gpm, "Ask for VirtMaps", [gpm], UL, 205, 123, 183, 20
button #main.apm, "Get VirtMaps", [apm], UL, 205, 148, 183, 20
button #main.ces, "iLive©", [ces], UL, 205, 98, 183, 20
button #main.enc, "Encrypt Files", [enc], UL, 205, 173, 183, 20
button #main.dna, "Program DNA Editer", [dna], UL, 205, 198, 183, 20
statictext #main, "Current Access Code:", 5, 55, 195, 17
textbox #main.syr, 5, 72, 195, 21
open "Worm & File Manager" for window as #main
fhe = 0
print #main.apm, "!disable"
[main]
wait
print #main, "trapclose[quit]"
[quit]
close #main
end
[con]
call Pause 3473
print #main.syr,  int(rnd(1)*10000000000000000000000000000000)
beep
goto [main]
sub Pause mil
t=time$("milliseconds")
while time$("milliseconds")<t+mil
wend
end sub
[com]
goto [main]
[wec]
sa = int(rnd(1)*4)
select case sa
case 1
notice "Webcam Notice" + chr$(13) + "Webcam Not Connected."
case 2
notice "Webcam Notice" + chr$(13) + "Inaproperate Circumstances in Room."
case 3
notice "Webcam Notice" + chr$(13) + "Camera is Turned Off."
case 4
notice "Webcam Notice" + chr$(13) + "Camera Cover is ON."
end select
goto [main]
[vir]
filedialog "Chose Virus", "*.bas", sb$
prompt "Enter Password"; sd$
if sd$ = "123 declo rocks" then goto [cona] else [main]
[cona]
call Pause 700
prompt "Enter Access Code"; sc$ 
call Pause 550
beep
playwave "worm1.wav"
call Pause 7550
beep
playwave "worm2.wav"
goto [main]
[rit]
run "C:\Program Files\Notepad++\Notepad++.exe"
goto [main]
[line]
filedialog "Chose Virus", "All Files", se$
prompt "Enter Password"; sf$
if sf$ = "123 declo rocks" then goto [conb] else [main]
[conb]
call Pause 700
prompt "Enter Access Code"; sg$ 
call Pause 550
beep
playwave "worm1.wav"
call Pause 8550
beep
playwave "worm3.wav"
goto [main]
[src]
prompt "Enter Password"; sh$
if sh$ = "123 declo rocks" then goto [conc] else [main]
[conc]
call Pause 700
prompt "Enter Access Code"; si$ 
call Pause 5550
beep
playwave "worm4.wav"
notice "Saved" + chr$(13) + "Saved as 11047"
goto [main]
[ema]
WindowWidth=220
WindowHeight=180
textbox #email.nams, 10, 10, 196, 25
button #email.oad, "Load E-Mails and Other Records", [emoal], UL, 10, 40, 196, 20
statictext #email.info, "Powered By: GoogleServers® ", 10, 70, 200, 20
radiobutton #email.c1, "Only New Files", [emloop], [emloop], 10, 100, 95, 20
radiobutton #email.c2, "All Files", [emloop], [emloop], 105, 100, 95, 20
radiobutton #email.c3, "Only Media", [emloop], [emloop], 10, 130, 95, 20
checkbox #email.op, "Notify User", [emloop], [emloop], 105, 130, 95, 20
open "E-Mail Recording" for window as #email
print #email.c1, "set"
[emloop]
wait
print #email, "trapclose[emx]"
[emx]
close #main
goto [main]
[embx]
print #email.nams, "contents? emxb$"
goto [emloop]
[emoal]
prompt "Enter Password"; st$
if st$ = "123 declo rocks" then goto [gag] else [main]
[gag]
ka = int(rnd(1)*250)
call Pause 2867
confirm  "Load Email Files to Computer?"; ga$
call Pause 8372
beep
notice "Email Server" + chr$(13) + "Loaded "; ka ;" Email files to My Stuff folder"
goto [emloop]
[condec]
prompt "Enter Password"; sk$
if sk$ = "123 declo rocks" then goto [gac] else [main]
[gac]
WindowWidth=250
WindowHeight=380
textbox #dec.nam, 10, 10, 225, 25
textbox #dec.com, 10, 40, 225, 25
textbox #dec.cad, 10, 70, 225, 25
radiobutton #dec.ch1, "All Passwords", [decch], [decch], 10, 100, 225, 20
radiobutton #dec.ch2, "Only E-Mail Passwords", [decch], [decch], 10, 130, 225, 20
button #dec.act, "Get Passwords", [decact], UL, 10, 160, 225, 20
statictext #dec.re1, "", 10, 185, 225, 20
statictext #dec.re2, "", 10, 200, 225, 20
texteditor #dec.pas, 10, 220, 225, 100
open "Passwords" for window as #dec
[decloop]
wait
print #dec, "trapclose[decx]"
[decx]
close #dec
goto [main]
[decch]
print #dec.ch1, "value?   decc$"
if decc$="set" then goto [decch1] else [decch2]
[decch1]
decc$="All Passwords"
goto [decloop]
[decch2]
decc$="Only E-Mail Passwords"
goto [decloop]
[decact]
print #dec.nam, "!contents?   deca$"
print #dec.com, "!contents?   decb$"
print #dec.cad, "!contents?   jut$"
print #dec.re1, "Getting Passwords from ";deca$;""
print #dec.re2, "";decc$;"          ";decb$
call Pause 1243
print #dec.pas, "Started Collecting..."
call Pause 5243
print #dec.pas, "";deca$;"   #1    **********"
call Pause 2243
print #dec.pas, "";deca$;"   #2    ************"
call Pause 243
print #dec.pas, "";deca$;"   #3    ********"
call Pause 3781
print #dec.pas, "";deca$;"   #4    *********"
call Pause 1243
print #dec.pas, "";deca$;"   #5    **********"
call Pause 2243
print #dec.pas, "";deca$;"   #6    *************"
call Pause 4243
print #dec.pas, "";deca$;"   #7    *******"
call Pause 1243
beep
print #dec.pas, " Entered Into ";jut$;" file in My Stuff"
goto [decloop]
[liv]
prompt "Enter Password"; ss$
if ss$ = "123 declo rocks" then goto [gaf] else [main]
[gaf]
prompt "Enter Access Code"; de$
call Pause 5423
print #main.ent, "!contents? de$"
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
goto [main]
[sen]
print #liv.cod, "!contents? fe$"
print #liv.pro, fe$
print #liv.pro, "Sending..."
call Pause 347
print #liv.pro, "Sent and Accepted"
beep
print #liv.pro, "   "
print #liv.cod, ""
goto [livloop]
[typ]
prompt "Enter Password"; qp$
if qp$ = "123 declo rocks" then goto [yaf] else [main]
[yaf]
prompt "Enter Access Code"; de$
call Pause 3491
confirm "Search for active keyboards?"; free$
if free$ = "yes" then
goto [yeth]
else
goto [main]
end if
[yeth]
call Pause 1249
notice "One active keyboard"
call Pause 306
confirm "Install splice and reroute?"; free$
call Pause 5674
notice "Keylogger installed, going to setup mode."
[setu]
filedialog "Save Logged Text", "*.txt", dia$
confirm "Save as:" + chr$(13) + dia$; free$
call Pause 163
filedialog "Chose Hiding Place", "All Files", dia$
confirm "Hide in:" + chr$(13) + dia$; free$
call Pause 2234
notice "Ready"
goto [main]
[blu]
prompt "Enter Password"; qz$
if qz$ = "123 declo rocks" then goto [yak] else [main]
[yak]
call Pause 3241
WindowWidth=220
WindowHeight=180
button #bou.st, "Start Bouncing Computer Location", [randy], UL, 5, 5, 203, 20
button #bou.en, "Close", [dex], UL, 5, 30, 203, 20
texteditor #bou.pro, 5, 55, 203, 75
open "Location Boncer" for window as #bou
print #bou.en, "!disable"
call Pause 1231
print #bou.pro, "Ready to Bounce"
print #bou.pro, "   "
[del]
wait
print #bou, "trapclose[dex]"
[dex]
close #bou
goto [main]
[randy]
print #bou.st, "!disable"
for qqq = 1 to 13
call Pause 1900
print #bou.pro, "";int(rnd(1)*999);".";int(rnd(1)*999);".";int(rnd(1)*99);".";int(rnd(1)*999);".";int(rnd(1)*9)
next qqq
goto [qqqaq]
[qqqaq]
call Pause 1236
print #bou.en,"!enable"
print #bou.pro, "   "
print #bou.pro, "Finished Bouncing"
goto [del]
[sec]
prompt "Enter Authorization Password"; ac$
if ac$ = "123 declo rocks" then goto [qas] else [main]
[qas]
call Pause 132
WindowWidth = 200
WindowHeight = 300
button #up.stat, "Start", [pts], UL, 5, 5, 182, 20
texteditor #up.pro, 5, 30, 182, 220
open "Computer Lock-Up" for window as #up
call Pause 1999
print #up.pro, "Ready"
[pool]
wait
print #up, "trapclose[px]"
[px]
close #up
goto [main]
[pts]
call Pause 2000
print #up.pro, "Closing Active Files"
call Pause 3000
print #up.pro, "Ending Downloads and Connections"
call Pause 2100
print #up.pro, "Bouncing Computer Location"
call Pause 5000
print #up.pro, "Finding Hiding Space"
call Pause 1000
print #up.pro, "Burrowing through Security"
call Pause 4500
print #up.pro, "Setting Access Trapdoor"
call Pause 10000
print #up.pro, "~~Secured from Net~~"
call Pause 3000
print #up.pro, "Feeling for Tracestrings"
call Pause 1000
print #up.pro, "Feeling for Access Moles"
call Pause 3000
print #up.pro, "Feeling for IFF's"
call Pause 1000
print #up.pro, "Feeling for Firewalls Codes"
call Pause 2000
print #up.pro, "Creating Fate Data I.D."
call Pause 1000
print #up.pro, "~~Secured from Network & Intra~~"
call Pause 3500
for Wqe = 1 to 300
print #up.pro, "~~||`{[]}`||~~"
next Wqe
beep
goto [px]
[gpm]
if fhe = 1 then goto [gpopz] else [gpopa]
[gpopa]
select case int(rnd(1)*5) +1
case 1
gpm$ = "Marisa, Garrity, Whitt, Jack, Stormie"
case 2
gpm$ = "Mariah, Lynzei, Chole, Marisa, Brad"
case 3
gpm$ = "Camron, Jack, Stirland, Whitt, Jay"
case 4
gpm$ = "Chole, Stirland, Mariah, Sydney, Rachel"
case 5
gpm$ = "Tenesia, Stormie, Lynzei, Jay, Camron"
case else
gpm$ = "Stirland, Camron, Jay, Whitt, Brad, Mikyla"
end select
'call Pause 4000
notice "VPM" + chr$(13) + "VPM's needed"
notice "VPM" + chr$(13) + gpm$
fhe = 1
print #main.apm, "!enable"
goto [main]
[apm]
prompt "Enter Password"; aop$
if aop$ = "123 declo rocks" then goto [aonc] else [main]
[aonc]
WindowWidth = 157
WindowHeight = 154
textbox #apm.gt, 5, 5, 140, 20
button #apm.nam, "Get Names", [gnam], UL, 5, 30, 140, 20
radiobutton #apm.en1, "32-Bit", [apmain], [apmain], 5, 55, 70, 20
radiobutton #apm.en2, "128-Bit", [apmain], [apmain], 75, 55, 70, 20
button #apm.go, "Get VPM's", [pried], UL, 5, 105, 140, 18
textbox #apm.fi, 5, 80, 140, 20
open "Get VPM" for window as #apm
[apmain]
wait
print #apm, "trapclose[apmx]"
[apmx]
close #apm
goto [main]
[gnam]
print #apm.gt, gpm$
goto [apmain]
[pried]
print #apm.fi, "!contents? gcr$"
close #apm
loadbmp "greenbar", "greenbar.bmp"
WindowWidth = 150
WindowHeight = 57
textbox #begi.tim, 0, 0, 0, 0
graphicbox #begi.con, 5, 5, 132, 20
open "Connect" for window as #begi
we = 0
ew = 0
by = 0
cr = 2
call Pause 800
goto [start1]
[wait1]
wait
print #begi, "trapclose [quit1]"
[quit1]
close #begi
end
[start1]
print #begi.con, "addsprite green greenbar"
print #begi.con, "drawsprites"
for lop = 1 to 2
print #begi.con, "spritemovexy green 12 0"
by = 0
[con1]
call Pause 800
[moveF1]
print #begi.con, "drawsprites"
we= 0
ew = ew+1
if ew = 10 then goto [Bcon1] else [con1]
[Bcon1]
ew = 0
print #begi.con, "spritemovexy green -12 0"
[dope]
call Pause 1000
[moveB1]
print #begi.con, "drawsprites"
we = 0
by = by + 1
if by = 11 then goto [zew] else [dope]
[zew]
next lop
goto [c]
[c]
notice "VPM" + chr$(13) + "Saved as "; gcr$ ;" in My Stuff"
close #begi
goto [main]
[ces]
loadbmp "greenbar", "greenbar.bmp"
WindowWidth = 150
WindowHeight = 57
textbox #bega.tim, 0, 0, 0, 0
graphicbox #bega.con, 5, 5, 132, 20
open "iLive" for window as #bega
we = 0
ew = 0
by = 0
cr = 2
call Pause 800
goto [start12]
[wait12]
wait
print #bega, "trapclose [quit12]"
[quit12]
close #bega
end
[start12]
print #bega.con, "addsprite green greenbar"
print #bega.con, "drawsprites"
for lop = 1 to 2
print #bega.con, "spritemovexy green 12 0"
by = 0
[con12]
call Pause 800
[moveF12]
print #bega.con, "drawsprites"
we= 0
ew = ew+1
if ew = 10 then goto [Bcon12] else [con12]
[Bcon12]
ew = 0
print #bega.con, "spritemovexy green -12 0"
[dope2]
call Pause 1000
[moveB12]
print #bega.con, "drawsprites"
we = 0
by = by + 1
if by = 11 then goto [zew2] else [dope2]
[zew2]
next lop
goto [c2]
[c2]
close #bega
notice "All Ready, " ; int(rnd(1)*20) ; " activated"
confirm "Alert all?"; ilv$
if ilv$ = "yes" then goto [ilv1] else [main]
[ilv1]
call Pause 2782
notice "iLive" + chr$(13) + "~~~All Alerted!~~~"
goto [main]
[enc]
prompt "Enter Password"; api$
if api$ = "123 declo rocks" then goto [api] else [main]
[api]
filedialog "Chose File(s) to Encrypt", "All Files", spi$
confirm "Encyrpt:" + chr$(13) + spi$; free$
prompt "Enter Encryption Code";wpi$
notice "Encrypter" +chr$(13) + "Starting Encrypting"
call Pause 4527
notice "Encrypter" +chr$(13) + "Encrypted "; spi$
goto [main]
[dna]
run "C:\Program Files\Notepad++\ResHacker.exe"
goto [main]
