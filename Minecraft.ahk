;startup functions
Initialize()

Suspend On
WinNotActive()

;handle only active script while game window has focus
WinActive()
{
	Suspend Off
	WinWaitNotActive Minecraft
	{
		WinNotActive()
	}
}
WinNotActive()
{
	Suspend On
	WinWaitActive Minecraft
	{
		WinActive()
	}
}


;standard hotkeys
^q:: ExitApp
^r:: Reload

;functional hotkeys
XButton2:: XPGrinding()
+XButton2:: ReinforcementBreaking()
^f:: AutoFarming()

Initialize()
{
	global delay := 100 ;delay between macro actions
}

XPGrinding()
{
	released := false
	
	;clicks left mouse until XButton2 is clicked again
	while (true)
	{
		;behavior
		sleep 100
		Click
		
		;state management
		GetKeyState, esc, Backspace, P
		GetKeyState, toggle, XButton2, P
		if (released == false && toggle == "U")
			released := true
		if (released && toggle == "D" || esc == "D")
			break
	}
}

ReinforcementBreaking()
{
	released := false
	
	;hold left mouse until XButton2 is clicked again
	Click down
	counter := 100
	while (true)
	{
		if (counter == 0)
		{
			MouseClick, Right
			counter := 100
		}
		else
			counter--
		
		;wait
		sleep 100
		
		;state management
		GetKeyState, esc, Backspace, P
		GetKeyState, toggle, XButton2, P
		GetKeyState, shift, Shift, P
		if (released == false && toggle == "U")
			released := true
		if (released && toggle == "D" && shift == "D" || esc == "D")
		{
			Click up
			break
		}
	}
}

AutoFarming()
{
	counter = 2
	
	while (counter < 10)
	{
		if (!FarmWithSlots(1, counter))
			break
		
		counter++
	}
}

FarmWithSlots(first, second)
{
	delay_client := 10
	delay_server := 350
	released := false
	
	loop 64
	{
		;behavior
		Send %first%
		sleep delay_client
		Click right
		sleep delay_server
		Send %second%
		sleep delay_client
		Click right
		sleep delay_server
		Click
		sleep delay_server
		
		;state management
		GetKeyState, esc, Backspace, P
		GetKeyState, toggle, f, P
		GetKeyState, control, Control, P
		if (released == false && toggle == "U")
			released := true
		if (released && toggle == "D" && control == "D" || esc == "D")
		{
			Click up
			return false ;break
		}
	}
	
	return true
}