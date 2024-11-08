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
quack=1
[stat]
nomainwin
enter$ = chr$(_VK_RETURN) : backspace$ = chr$(_VK_BACK)
bs = 2
WindowWidth = 285 : WindowHeight= 60
UpperLeftX = (DisplayWidth-WindowWidth)/2
UpperLeftY = (DisplayHeight-WindowHeight)/2
graphicbox #pass.gb, 0,0,0,0
textbox #pass.tb, 1,10,275,20
open "Enter Password" for window as #pass
print #pass, "trapclose [quitpass]"
print #pass, "font courier_new 10 bold"
print #pass.gb, "setfocus"
print #pass.gb, "when characterInput [letter]"
timer 400, [t]
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
goto [begi]
else
notice " " + chr$(13) + "Wrong Password!" : print #pass.tb, ""
print #pass.gb, "setfocus" : b$ = "" : enter = 0 : timer 400, [t]
end if
wait
[begi]
dim code$(12)
code$(0) = "Christopherson, Jay"
code$(1) = "Darrington, Jack"
code$(2) = "Duncan, Mariah"
code$(3) = "Kidd, Chole"
code$(4) = "Kidd, Stormie"
code$(5) = "Olson, Nate"
code$(6) = "Searle, Garrity"
code$(7) = "Stoker, Lynzei"
code$(8) = "Tuner, Camron"
code$(9) = "Wardle, Marisa"
code$(10) = "Wilson, Bailey"
code$(11) = "Zollinger, Stirland"
code$(12) = "Directory..."
WindowWidth=700 : WindowHeight=465
groupbox #main.group1, "", 10, 10, 340, 400
combobox #main.como, code$(, [codeHan], 20, 30, 320, 290
statictext #main.dirt, "IP Directory", 20, 60, 100, 15
button #main.dip, " ", [ipBon], UL, 325, 76, 10, 50
textbox #main.nam,  20, 76, 300, 20
textbox #main.ip,  20, 106, 300, 20
radiobutton #main.db, "Weave System", [sub], [sub], 20, 136, 120, 20
radiobutton #main.tu, "Tunnel System", [sub], [sub], 160, 136, 120, 20
radiobutton #main.su, "Notice System", [sub], [sub], 20, 156, 120, 20
radiobutton #main.sr, "E-Mail Access", [sub], [sub], 160, 156, 120, 20
checkbox #main.fe, "File Extract", [sub], [sub], 160, 176, 120, 20
checkbox #main.fd, "File Delete", [sub], [sub], 20, 176, 120, 20
checkbox #main.af, "Add File", [sub], [sub], 160, 196, 120, 20
checkbox #main.ot, "Other...", [otherA], [otherB], 20, 196, 120, 20
statictext #main.ott, "Other", 20, 220, 100, 19
textbox #main.ot,  20, 238, 260, 20
button #main.pss, "Pick File", [pssF], UL, 285, 238, 55, 20
statictext #main.cot, "Code Line", 20, 262, 100,20
textbox #main.co,  20, 282, 320, 20
texteditor #main.stat1, 20, 332, 155, 70
texteditor #main.stat2, 185, 332, 155, 70
button #main.cob, "Send Code and/or Files", [cob], UL, 20, 306, 320, 20
statictext #main.otex, "Other Options", 360, 20, 100, 20
button #main.goo, "Manage Relative Severs", [googlE], UL, 360, 40, 325, 20
button #main.tun, "Manage Web Tunnels and Computer Hookups", [shoT], UL, 360, 70, 325, 20
button #main.ocb, "E-Mail Monitoring and Recording", [monR], UL, 360, 100, 325, 20
button #main.cnn, "Computer and Tunnel Creator", [blueT], UL, 360, 130, 325, 20
button #main.ps, "View Personal Server Condition", [ps], UL, 360, 160, 325, 20
button #main.de, "Password Decorder and Saver", [dec], UL, 360, 190, 325, 20
button #main.pro1, "Windows Passwords", [Tpro1], UL, 360, 220, 162, 20
button #main.pro2, "Typed Deluxe", [Tpro2], UL, 532, 220, 154, 20
groupbox #main.group2, "", 360, 250, 325, 160
checkbox #main.sq1, "", [main], [main], 370, 263, 20, 20
checkbox #main.sq2, "", [main], [main], 390, 263, 20, 20
checkbox #main.sq3, "", [main], [main], 410, 263, 20, 20
checkbox #main.sq4, "", [main], [main], 430, 263, 20, 20
checkbox #main.sq5, "", [main], [main], 450, 263, 20, 20
checkbox #main.sq6, "", [main], [main], 470, 263, 20, 20
checkbox #main.sq7, "", [main], [main], 490, 263, 20, 20
checkbox #main.sq8, "", [main], [main], 510, 263, 20, 20
checkbox #main.sq9, "", [main], [main], 530, 263, 20, 20
checkbox #main.sq10, "", [main], [main], 550, 263, 20, 20
checkbox #main.sq11, "", [main], [main], 570, 263, 20, 20
checkbox #main.sq12, "", [main], [main], 590, 263, 20, 20
checkbox #main.sq13, "", [main], [main], 610, 263, 20, 20
checkbox #main.sq14, "", [main], [main], 630, 263, 20, 20
checkbox #main.sq15, "", [main], [main], 650, 263, 20, 20
button #main.tog, "Send Code and Subtoggles", [subtog], UL, 370, 293, 305, 20
textbox #main.co1, 370, 323, 305, 20
texteditor #main.stat3, 370, 353, 305, 49
open "Charles Net Management 7.9" for window as #main
print #main.ip, "!disable"
print #main.nam, "!disable"
print #main.ot, "!disable"
print #main.como, "select all"
print #main.co, "!setfocus"
[main]
wait
print #main, "trapclose [quit]"
[beepm]
beep
notice "Wrong Password!"
goto [main]
[quit]
close #main
[codeHan]
print #main.como, "contents? como$"
if como$="Directory..." then goto [yesA] else [noA]
[yesA]
print #main.nam, "!enable"
print #main.ip, "!enable"
goto [main]
[noA]
print #main.nam, "Pre Programed..."
print #main.ip, "Pre Programed..."
goto [main]
[ipBon]
print #main.ip, "";int(rnd(100)*999);".";int(rnd(100)*999);".";int(rnd(100)*999);".";int(rnd(100)*999);".";int(rnd(100)*999);".";int(rnd(100)*999);".0.1"
goto [main]
[sub]
goto [main]
[otherA]
print #main.ot, "!enable"
goto [main]
[otherB]
print #main.ot, "!disable"
goto [main]
[cob]
coba=0
[cobS]
print #main.stat1, using("#####.######",  rnd(1)*99999999)
print #main.stat2, using("#####.######",  rnd(1)*99999999)
coba=coba+1
if coba=214 then goto [cobD] else [cobS]
[cobD]
beep
print #main.stat1, "Finished...Done!!"
print #main.stat2, "Finished...Done!!"
goto [main]
[pssF]
template$ = "*."
    filedialog "Pick a Program and/or File ", template$, w$
goto [main]
[googlE]
dim code$(10)
companys$(0) = "Google"
companys$(1) = "Yahoo!"
companys$(2) = "Ask Jeeves"
companys$(3) = "Mapquest"
companys$(4) = "Dell"
companys$(5) = "Panasonic"
companys$(6) = "BYU"
companys$(7) = "HP"
companys$(8) = "Sony"
companys$(9) = "Microsoft"
companys$(10) = "Apple"
WindowWidth=300
WindowHeight=100
combobox #sere.bon, companys$(, [googlEcom], 10, 10, 260, 456
button #sere.log, "Log On", [googlEloge], UL, 10, 40, 260, 20
open "Relative Severs" for window as #sere
[googlEloop]
wait
print #main, "trapclose[googlEquit"
[googlEquit]
close #sere
goto [main]
[googlEcom]
print #sere.bon, "selection? comsere$"
goto [googlEloop]
[googlEloge]
prompt "Enter Password";goopass$
if goopass$="hornettown buzz" then goto [gooR] else [beepm]
[gooR]
notice "Logged on to ";comsere$
goto [googlEloop]
[shoT]
if quack=0 then goto [shoTT] else [conshoT]
[shoTT]
prompt "Enter Group Password"; fam$
if fam$="123 declo rocks" then goto [conshoT] else [beepm]
[conshoT]
WindowWidth=320
WindowHeight=170
textbox #ton.cud, 10, 10, 250, 20
button #ton.saw, "Send", [sawshoT], UL, 260, 10, 45, 20
texteditor #ton.res, 10, 40, 295, 76
open "Tunnel Management" for window as #ton
[shoTloop]
print #ton.res, "Plugged and Ready"
print #ton.cud, "!setfocus"
wait
print #ton, "trapclose[shoTx]"
[shoTx]
close #ton
goto [main]
[sawshoT]
saw=0
[sawshoTb]
print #ton.res, using("###################.#########################",  rnd(1)*999999999999999999)
saw=saw+1
if saw=600 then goto [shoTloop] else [sawshoTb]
[monR]
if quack=0 then goto [monF] else [conmon]
prompt "Enter Password"; muc$
if muc$="123 declo rocks" then goto [conmon] else [beepm]
[conmon]
ema$(0) = "Christopherson, Jay"
ema$(1) = "Darrington, Jack"
ema$(2) = "Duncan, Mariah"
ema$(3) = "Kidd, Chole"
ema$(4) = "Kidd, Stormie"
ema$(5) = "Olson, Nate"
ema$(6) = "Searle, Garrity"
ema$(7) = "Stoker, Lynzei"
ema$(8) = "Tuner, Camron"
ema$(9) = "Wardle, Marisa"
ema$(10) = "Zollinger, Stirland"
WindowWidth=220
WindowHeight=180
combobox #email.nams, ema$(, [embx], 10, 10, 200, 200
button #email.oad, "Load E-Mail and Records", [emoal], UL, 10, 40, 200, 20
statictext #email.info, "Powered By: CleanWords® by LDS.org", 10, 70, 200, 20
radiobutton #email.c1, "Insulting Words", [emloop], [emloop], 10, 100, 95, 20
radiobutton #email.c2, "Only Profanity", [emloop], [emloop], 105, 100, 95, 20
radiobutton #email.c3, "No Protection", [emloop], [emloop], 10, 130, 95, 20
checkbox #email.op, "Bad Addresses", [emloop], [emloop], 105, 130, 95, 20
open "E-Mail Monitoring" for window as #email
print #email.c1, "set"
print #email.op, "set"
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
notice "Load This *.EMON File"
beep
beep
notice "Loaded the Contents to Outlook Express"
goto [emloop]
[blueT]
run "c:\program files\ivt corporation\bluesoleil\bluesoleil.exe"
goto [main]
[ps]
beep
notice "Working Conition is Good"
goto [main]
[subtog]
tog=0
[protog]
print #main.stat3, using("############.############",  rnd(1)*99999999999999)
tog=tog+1
if tog=300 then [fintog] else [protog]
[fintog]
beep
print #main.stat3, "Done"
goto [main]
[dec]
com$(0) = "Google"
com$(1) = "Yahoo!"
com$(2) = "Ask Jeeves"
com$(3) = "Mapquest"
com$(4) = "Dell"
com$(5) = "Panasonic"
com$(6) = "BYU"
com$(7) = "HP"
com$(8) = "Sony"
com$(9) = "Microsoft"
com$(10) = "Apple"
if quack=0 then goto [decqa] else [condec]
prompt "Enter Password"; muc$
if muc$="123 declo rocks" then goto [condec] else [beepm]
[condec]
dec$(0) = "Christopherson, Jay"
dec$(1) = "Darrington, Jack"
dec$(2) = "Duncan, Mariah"
dec$(3) = "Kidd, Chole"
dec$(4) = "Kidd, Stormie"
dec$(5) = "Olson, Nate"
dec$(6) = "Searle, Garrity"
dec$(7) = "Stoker, Lynzei"
dec$(8) = "Tuner, Camron"
dec$(9) = "Wardle, Marisa"
dec$(10) = "Zollinger, Stirland"
WindowWidth=250
WindowHeight=325
combobox #dec.nam, dec$(, [decnams], 10, 10, 225, 220
combobox #dec.com, com$(, [deccoms], 10, 40, 225, 456
textbox #dec.cad, 10, 70, 225, 20
radiobutton #dec.ch1, "All Passwords", [decch], [decch], 10, 100, 225, 20
radiobutton #dec.ch2, "Only E-Mail Passwords", [decch], [decch], 10, 130, 225, 20
button #dec.act, "Get Passwords", [decact], UL, 10, 160, 225, 20
statictext #dec.re1, "", 10, 185, 225, 20
statictext #dec.re2, "", 10, 200, 225, 20
texteditor #dec.pas, 10, 220, 225, 50
open "Passwords" for window as #dec
[decloop]
wait
print #dec, "trapclose[decx]"
[decx]
close #dec
goto [main]
[decnams]
print #dec.nam, "contents?   deca$"
goto [decloop]
[deccoms]
print #dec.com, "contents?   decb$"
goto [decloop]
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
print #dec.re1, "Getting Passwords from ";deca$;""
print #dec.re2, "";decc$;"          ";decb$
beep
print #dec.pas, "";deca$;"   #1    ************"
print #dec.pas, "";deca$;"   #2    **********"
print #dec.pas, "";deca$;"   #3    ***************"
print #dec.pas, "";deca$;"   #4    *****"
print #dec.pas, "";deca$;"   #5    *************"
print #dec.pas, "";deca$;"   #6    ***********"
print #dec.pas, "";deca$;"   #7    ***"
print #dec.pas, " Entered Into Window Passwords™"
goto [decloop]
[Tpro1]
run "c:\program files\accent office password recovery\aofpr.exe"
goto [main]
[Tpro2]
run "c:\program files\polyphony software\keyboard manager\keybdmgr.exe"
goto [main]
