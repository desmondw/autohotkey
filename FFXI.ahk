^r:: reload

number = -1

~[::
	if number = 9
	{
		sendplay {Backspace}
		number = 0
	}
	else if number > -1
	{
		sendplay {Backspace}
		
		if number < 9
		{
			number++
		}
	}
	else
	{
		number = 0
	}
	sendplay %number%
return

~]::
	number = -1
return