function noteMiss()
   if difficulty == 0 then
		health = getProperty('health')
		if getProperty('health') > 0 then
     	setProperty('health', health+ 1);
		end
	end
end
function onCreate()
	if difficulty == 0 then
		setProperty('healthBar.visible', false)
		setProperty('healthBarBG.visible', false)
		setProperty('iconP1.visible', false)
		setProperty('iconP2.visible', false)
		else
		close(true);
end
end