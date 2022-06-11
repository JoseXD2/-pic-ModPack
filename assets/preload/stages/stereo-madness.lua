function onCreate()
	-- background shit
	makeLuaSprite('stereo-madness-1', 'stereo-madness-1', -600, -300);
	setScrollFactor('stereo-madness-1', 0.9, 0.9);
	
	makeLuaSprite('stereo-madness-2', 'stereo-madness-2', -650, 600);
	setScrollFactor('stereo-madness-2', 0.7, 0.7);
	scaleObject('stereo-madness-2', 1.1, 1.1);

	makeLuaSprite('stereo-madness-3', 'stereo-madness-3', -650, 600);
	setScrollFactor('stereo-madness-3', 0.9, 0.9);

	addLuaSprite('stereo-madness-1', false);
	addLuaSprite('stereo-madness-2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end