Suspend On
WinNotActive()

;handle only active script while game window has focus
WinActive()
{
	Suspend Off
	WinWaitNotActive Awesomenauts
	{
		WinNotActive()
	}
}
WinNotActive()
{
	Suspend On
	WinWaitActive Awesomenauts
	{
		WinActive()
	}
}


;standard hotkeys
^q:: ExitApp
^r:: Reload
!r:: spamTaunt()

spamTaunt()
{
	while (true)
	{
		send r
		sleep 1000 * 12
	}
}