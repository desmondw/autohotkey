^r::Reload

XButton2:: ;shows atk menuBar on hold of mouse5
{
	send +4
	loop
	{
		GetKeyState,mouse5,XButton2,p
		if mouse5 = U
		{
			send +1
			break
		}
	}
}
return

XButton1:: ;shows atk menuBar on hold of mouse4
{
	send +5
	loop
	{
		GetKeyState,mouse4,XButton1,p
		if mouse4 = U
		{
			send +1
			break
		}
	}
}
return

`::
	send ~
return