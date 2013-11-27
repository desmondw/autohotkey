Suspend On
WinNotActive()

;handle only active script while game window has focus
WinActive()
{
	Suspend Off
	WinWaitNotActive Diablo III
	{
		WinNotActive()
	}
}
WinNotActive()
{
	Suspend On
	WinWaitActive Diablo III
	{
		WinActive()
	}
}

;standard hotkeys
^q:: ExitApp
^r:: Reload

;functional hotkeys
^LButton:: salvageArtifact()

salvageArtifact()
{
	delay_client := 10
	delay_server := 350
	
	;behavior
	Click left
	sleep delay_client
	Send {enter}
}