;standard hotkeys
^q:: ExitApp
^r:: Reload

;functional hotkeys
XButton1:: autoclick()

autoclick()
{
	released := false
	
	;clicks left mouse until XButton2 is clicked again
	while (true)
	{
		;behavior
		sleep 1
		Click
		
		;state management
		GetKeyState, esc, Backspace, P
		GetKeyState, toggle, XButton1, P
		if (released == false && toggle == "U")
			released := true
		if (released && toggle == "D" || esc == "D")
			break
	}
}
