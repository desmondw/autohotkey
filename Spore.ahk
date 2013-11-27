

;standard hotkeys
^q:: ExitApp
^r:: Reload
^+z:: autosave()

autosave()
{
	while (true)
	{
		send ^s
		
		;wait
		sleep 20 * 60 * 1000 ; min / sec / ms
	}
}
