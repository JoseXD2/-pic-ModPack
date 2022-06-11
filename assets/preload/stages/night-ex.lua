function onCreate()
	-- background shit
	makeLuaSprite('BG1_night-ex', 'BG1_night-ex', -600, -220);
	setLuaSpriteScrollFactor('BG1_night-ex', 0.9, 0.9);
	
        addLuaSprite('BG1_night-ex', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end