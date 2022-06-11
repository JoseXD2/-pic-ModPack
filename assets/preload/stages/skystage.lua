function onCreate()
	-- background shit
	makeLuaSprite('skyBG', 'skyBG', -500, -300);
	setLuaSpriteScrollFactor('skyBG', 0.9, 0.9);
	
	addLuaSprite('skyBG', false);
		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end