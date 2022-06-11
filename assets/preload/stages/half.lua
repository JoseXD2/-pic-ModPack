function onCreate()
	-- background shit
	makeLuaSprite('Half', 'new universes/Half', -600, -100);
	setScrollFactor('Half', 0.9, 0.9);

	addLuaSprite('Half', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end