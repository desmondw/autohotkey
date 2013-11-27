
menuOn = 0
menuPage = 1
mapPage = 1

^r:: Reload
MButton:: send {Space}
XButton1:: scroll("prev")
XButton2:: scroll("next")

XButton1 UP::
{
	GetKeyState,state,XButton2,p
	if state = D
	{
		if menuOn
			menuOn = 0
		else
			menuOn = 1
		send {F1}
	}
}
return
XButton2 UP::
{
	GetKeyState,state,XButton1,p
	if state = D
	{
		if menuOn
			menuOn = 0
		else
			menuOn = 1
		send {F1}
	}
}
return


scroll(direction)
{
	global menuOn
	
	if menuOn
		scrollMenu(direction)
	else
		scrollMap(direction)
}

scrollMenu(direction)
{
	global menuPage
	
	if direction = next
	{
		if menuPage < 8
			menuPage++
		else
			menuPage = 1
	}
	else if direction = prev
	{
		if menuPage > 1
			menuPage--
		else
			menuPage = 8
	}
	scrollAction(menuPage)
}

scrollMap(direction)
{
	global mapPage
	
	if direction = next
	{
		if mapPage < 8
			mapPage++
		else
			mapPage = 1
	}
	else if direction = prev
	{
		if mapPage > 1
			mapPage--
		else
			mapPage = 8
	}
	scrollAction(mapPage)
}

scrollAction(page)
{
	if page = 1
		send q
	else if page = 2
		send w
	else if page = 3
		send e
	else if page = 4
		send r
	else if page = 5
		send t
	else if page = 6
		send y
	else if page = 7
		send u
	else if page = 8
		send i
}