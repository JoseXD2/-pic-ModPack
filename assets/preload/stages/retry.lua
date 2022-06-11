function onCreate()
	-- background shit
	makeLuaSprite('RETRY', 'roadstuff/drop/RETRY', -600, 0);
	setScrollFactor('RETRY', 0.9, 0.9);

	addLuaSprite('RETRY', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end