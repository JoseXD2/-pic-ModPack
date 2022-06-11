function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'pico-p1')

	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'picoGameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'picoGameoverEnd');

    makeLuaSprite('bg', 'alleyway', -600, -200);
    addLuaSprite('bg', false);

    makeLuaSprite('light', 'light', -600, -200);
    addLuaSprite('light', false);
    setObjectOrder('light', 4);

end