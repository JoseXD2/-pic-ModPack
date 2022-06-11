function onCreate()
	-- background shit
	makeLuaSprite('dvra', 'dvra', -1360, -300);
	setScrollFactor('dvra', 0.9, 0.9);

	makeLuaSprite('dvrase', 'dvrase', -1360, -300);
	setScrollFactor('dvrase', 0.9, 0.9);

	addLuaSprite('dvrase', false);
	addLuaSprite('dvra', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end