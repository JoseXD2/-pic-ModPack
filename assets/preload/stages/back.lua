function onCreate()
	-- background shit
	makeLuaSprite('dvras', 'dvras', -1360, -300);
	setScrollFactor('dvras', 0.9, 0.9);

	addLuaSprite('dvras', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end