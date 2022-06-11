function onCreate()
	-- background shit
	makeLuaSprite('BG', 'roadstuff/BG', -600, 0);
	setScrollFactor('BG', 0.9, 0.9);
        scaleObject('BG', 2, 2)

	makeAnimatedLuaSprite('PICOLO', 'characters/Pico', 700,730)addAnimationByPrefix('PICOLO', 'dance', 'Pico Idle', 24, true)
	objectPlayAnimation('PICOLO', 'dance', false)
	setScrollFactor('PICOLO', 0.9, 0.9);

	addLuaSprite('PICOLO', false);
	addLuaSprite('BG', false);

	setObjectOrder('BG', 1);
	setObjectOrder('PICOLO', 3);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end