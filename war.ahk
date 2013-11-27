XButton2:: ;shows atk menuBar on hold of mouse5
{
	send +5
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