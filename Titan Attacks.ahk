;standard hotkeys
^q:: ExitApp
^r:: Reload
XButton1:: AutoAttackFastest(8)
XButton2:: AutoAttackFastest(12)

AutoAttackFastest(delay_client)
{
	;delay_client := 8
	
	while (true)
	{
		Click down left
		sleep delay_client / 2
		Click up left
		sleep delay_client / 2

		GetKeyState, toggle, XButton1, P
		if (toggle == "U")
			break
	}
}