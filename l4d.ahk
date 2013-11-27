^r:: reload

#z::
Run, CLI.exe Start CCC, C:\Program Files (x86)\ATI Technologies\ATI.ACE\Core-Static,
sleep 800
CoordMode Mouse,Relative
Click 178, 40
SetKeyDelay 200
send {Down}
send {Right}
send {Down}
send {Enter}
return

#x::
SetKeyDelay 50
send {SC029}
send ss_enable 1
send {Enter}
send exec 360controller
send {Enter}
send {SC029}
return

#c::
SetKeyDelay 50
send {SC029}
send ss_connect
send {Enter}
send cmd2 jointeam 2
send {Enter}
send {SC029}
return

#v::
Run, CLI.exe Start CCC, C:\Program Files (x86)\ATI Technologies\ATI.ACE\Core-Static,
sleep 800
CoordMode Mouse,Relative
Click 178, 40
SetKeyDelay 200
send {Down}
send {Right}
send {Enter}
return
