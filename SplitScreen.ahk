^r:: reload
	
; *******************************
; *** Only if win is in focus ***
; *******************************
#IfWinActive, Call of Duty 4

#maxhotkeysperinterval 200


~Down::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {Down down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {Down down}, ahk_id %UTWinID2%
return

~Down Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {Down up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {Down up}, ahk_id %UTWinID2%
return

~Up::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {Up down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {Up down}, ahk_id %UTWinID2%
return

~Up Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {Up up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {Up up}, ahk_id %UTWinID2%
return

~Left::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {Left down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {Left down}, ahk_id %UTWinID2%
return

~Left Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {Left up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {Left up}, ahk_id %UTWinID2%
return

~Right::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {Right down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {Right down}, ahk_id %UTWinID2%
return

~Right Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {Right up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {Right up}, ahk_id %UTWinID2%
return

~1::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {1 down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {1 down}, ahk_id %UTWinID2%
return

~1 Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {1 up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {1 up}, ahk_id %UTWinID2%
return

~2::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {2 down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {2 down}, ahk_id %UTWinID2%
return

~2 Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {2 up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {2 up}, ahk_id %UTWinID2%
return

~3::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {3 down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {3 down}, ahk_id %UTWinID2%
return

~3 Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {3 up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {3 up}, ahk_id %UTWinID2%
return

~4::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {4 down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {4 down}, ahk_id %UTWinID2%
return

~4 Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {4 up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {4 up}, ahk_id %UTWinID2%
return

~5::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {5 down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {5 down}, ahk_id %UTWinID2%
return

~5 Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {5 up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {5 up}, ahk_id %UTWinID2%
return

~6::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {6 down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {6 down}, ahk_id %UTWinID2%
return

~6 Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {6 up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {6 up}, ahk_id %UTWinID2%
return

~7::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {7 down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {7 down}, ahk_id %UTWinID2%
return

~7 Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {7 up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {7 up}, ahk_id %UTWinID2%
return

~8::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {8 down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {8 down}, ahk_id %UTWinID2%
return

~8 Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {8 up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {8 up}, ahk_id %UTWinID2%
return

~9::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {9 down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {9 down}, ahk_id %UTWinID2%
return

~9 Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {9 up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {9 up}, ahk_id %UTWinID2%
return

~0::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {0 down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {0 down}, ahk_id %UTWinID2%
return

~0 Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {0 up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {0 up}, ahk_id %UTWinID2%
return

~u::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {u down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {u down}, ahk_id %UTWinID2%
return

~u Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {u up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {u up}, ahk_id %UTWinID2%
return

~i::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {i down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {i down}, ahk_id %UTWinID2%
return

~i Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {i up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {i up}, ahk_id %UTWinID2%
return

~o::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {o down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {o down}, ahk_id %UTWinID2%
return

~o Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {o up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {o up}, ahk_id %UTWinID2%
return

~p::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {p down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {p down}, ahk_id %UTWinID2%
return

~p Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {p up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {p up}, ahk_id %UTWinID2%
return

~j Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {j up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {j up}, ahk_id %UTWinID2%
return

~j::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {j down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {j down}, ahk_id %UTWinID2%
return

~k Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {k up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {k up}, ahk_id %UTWinID2%
return

~k::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {k down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {k down}, ahk_id %UTWinID2%
return

~l Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {l up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {l up}, ahk_id %UTWinID2%
return

~l::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {l down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {l down}, ahk_id %UTWinID2%
return

~ESC Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {ESC up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {ESC up}, ahk_id %UTWinID2%
return

~ESC::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {ESC down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {ESC down}, ahk_id %UTWinID2%
return

~/ Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {/ up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {/ up}, ahk_id %UTWinID2%
return

~/::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {/ down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {/ down}, ahk_id %UTWinID2%
return

~[ Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {[ up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {[ up}, ahk_id %UTWinID2%
return

~[::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {[ down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {[ down}, ahk_id %UTWinID2%
return

~]::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {] down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {] down}, ahk_id %UTWinID2%
return

~] Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {] up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {] up}, ahk_id %UTWinID2%
return

~-::
WinGet, UTWinID, List, Call of Duty 4
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {- down}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {- down}, ahk_id %UTWinID2%
return

~- Up::
	IfWinNotActive, ahk_id %UTWinID1%
		ControlSend, , {- up}, ahk_id %UTWinID1%
	IfWinNotActive, ahk_id %UTWinID2%
		ControlSend, , {- up}, ahk_id %UTWinID2%
return