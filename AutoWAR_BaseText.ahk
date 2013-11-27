setkeydelay 13,,play

^r::Reload
!a::newTarget()
+x::combat()

+z::
	buffCounter = 0
	
	;buffs
	
	loop
	{
		loop
		{
			if newTarget() = "targeted"
				break
		}
			
		combat()
		
		buffCounter++
		if buffCounter > 50
		{
			;buffs
		}
	}
return

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

combat()
{
	GCD = 1300 ;(global cooldown) - (approx typing time)
	sendplay /channeljoin AutoWARLog{enter}

	;start of combat
	
	loop 5
	{
		;inner combat
		if checkForTarget() = "noTargetMove"
			break
	}
	
	if checkPixel(287,44,0x2033E0) = "same"
		sendplay /3 [LOG]-Unkillable-{enter}
	sendplay /3 [LOG]-Exit Combat-{enter}
}