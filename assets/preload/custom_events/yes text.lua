function onEvent(name)
    if name == "yes text" then
		makeLuaText('10miss', "No More Than 10 Misses", 0, getProperty('timeBar.x'), getProperty('timeBar.y') + 200);
		setObjectCamera('10miss', 'hud')
		screenCenter('10miss', 'X')
		setTextSize('10miss', 35);
		addLuaText('10miss');
		setProperty('10miss.alpha', 0)
		setProperty('10miss.x', getProperty('10miss.x') - 140)
		doTweenAlpha('fadeIn', '10miss', 1, 1.25, 'linear')
		runTimer('removeTimer', 4);
	end
end

function onTimerCompleted(tag)
	if tag == 'removeTimer' then
		doTweenAlpha('fadeIn', '10miss', 0, 1.25, 'linear')
	end
end