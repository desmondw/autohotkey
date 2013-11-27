^q:: ExitApp
^r:: Reload
XButton1:: AutoAttackFastest()

AutoAttackFastest()
{
	delay_client = 10;
	while (true)
	{
		Send {down}
		sleep delay_client / 2
		Send {up}
		sleep delay_client / 2

		GetKeyState, toggle, XButton1, P
		if (toggle == "U")
			break
	}
}