^r:: reload

+XButton2::
while 1
{
	GetKeyState, state, XButton2
	if state = U
	{
		Click
	}
	else
	{
		Break
	}
	Sleep, 100
}
return