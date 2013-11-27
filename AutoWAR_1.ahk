;bot leveler for WAR: Warhammer Age of Reckoning.

setkeydelay 13,,play
;309,43 = full
;300,65 = window (1280x768)

!z::bot()
!d::loot()
^r::Reload
!x::
	initialize()
	combat()
	loot()
return

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

bot()
{
	initialize()
	GCD = 1300 ;global cooldown - approx typing time
	buffCounter = 0
	
	send ^3
	sleep GCD
	
	loop
	{
		loop
		{
			if newTarget() = "targeted"
				break
		}
		
		combat()
		loot()
		
		buffCounter++
		if buffCounter > 50
		{
			send ^3
			sleep GCD
		}
	}
}

initialize()
{
	sendplay /channeljoin AutoWARLog{enter}
	;loop 30
	;	send WheelDown
	;send 
}

combat()
{
	GCD = 1300 ;global cooldown - approx typing time

	sendplay /3 [LOG]-Enter Combat-{enter}
	send ^{F1}
	
	sendplay /3 [LOG]Morale1/Mark1{enter}
	send {F1}+{F1}
	sleep GCD
	
	sendplay /3 [LOG]Harbinger of Doom{enter}
	send ^1
	sleep GCD
	
	loop 5
	{
		if checkForTarget() = "noTargetMove"
			break
		
		sendplay /3 [LOG]Warp Reality{enter}
		send +52+1
		sleep GCD
		
		sendplay /3 [LOG]Tzeentch's Cordial{enter}
		send 2
		sleep GCD
		
		sendplay /3 [LOG]Tzeentch's Cry{enter}
		send +53+1
		sleep GCD
		
		loop 2
		{
			if checkForTarget() = "noTargetMove"
				break
			
			sendplay /3 [LOG]Scourge{enter}
			send +51+1
			sleep 2300
			sleep GCD
			
			sendplay /3 [LOG]Tzeentch's Cry{enter}
			send +53+1
			sleep GCD
		}
	}
	if checkPixel(287,44,0x2033E0) = "same"
		sendplay /3 [LOG]-Unkillable-{enter}
	sendplay /3 [LOG]-Exit Combat-{enter}
}

loot()
{
	;send [toggle first person view]
	MouseClickDrag, Left, 640,200,640,400
	sleep 100
	loop 1 ;used for easy break
	{
		if lootCheck(540,300) = "different"
			break
		if lootCheck(640,300) = "different"
			break
		
		if lootCheck(740,300) = "different"
			break
		
		if lootCheck(540,400) = "different"
			break
		;if lootCheck(640,400) = "different" ;always registers as different, because self moves
		;	break
		if lootCheck(740,400) = "different"
			break
		
		if lootCheck(540,500) = "different"
			break
		if lootCheck(640,500) = "different"
			break
		if lootCheck(740,500) = "different"
			break
	}
	MouseClickDrag, Left, 640,200,640,196
}

lootCheck(x,y)
{
	PixelGetColor, color1, x,y
	MouseMove, x,y ;center of screen on 1280x800
	PixelGetColor, color2, x,y
	if color1 = %color2%
		return "same"
	else
	{
		MouseClick Right
		sleep 1000
		return "different"
	}
}

newTarget()
{
	if checkForTarget() = "targeted"
		return "targeted"
	sendplay /3 [LOG] Looking for target...{enter}
	send {tab}n
	sleep 200 ;pause to let target panel appear
	
	count = 0
	loop
	{
		if checkForTarget() = "targeted"
			return "targeted"
		turn()
		
		if count > 3
		{
			count = 0
			sleep 1000 ;pause to reload script
		}
		count++
	}
	return "noTargetMove"
}

checkForTarget()
{
	if checkPixel(309,43,0x0D0E40) = "different"
		return "noTargetMove"
	return "targeted"
}

checkPixel(x,y,color)
{
	PixelGetColor,input,x,y
	if input != %color%
		return "different"
	return "same"
}

turn()
{
	loop 13 ;turns ~90 degrees left
	{
		send {tab}
		send {a down}
		sleep 30
	}
	send {a up}
}

moveToTarget()
{
	
}
