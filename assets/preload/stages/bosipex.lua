function onCreate()
	-- background shit
	makeLuaSprite('BG1_sunset', 'BG1_sunset', -240, -10);
	setLuaSpriteScrollFactor('BG1_sunset', 0.9, 0.9);
	
        makeLuaSprite('BG2_sunset', 'BG2_sunset', -240, -60);
	setLuaSpriteScrollFactor('BG2_sunset', 0.9, 0.9);
	
        makeLuaSprite('ex_crowd_sunset', 'ex_crowd_sunset', 50, 150);
	setLuaSpriteScrollFactor('ex_crowd_sunset', 0.9, 0.9);
	
	makeLuaSprite('BG3_sunset', 'BG3_sunset', -270, -130);
	setLuaSpriteScrollFactor('BG3_sunset', 0.9, 0.9);
	
	addLuaSprite('BG1_sunset', false);
	addLuaSprite('BG2_sunset', false);
	addLuaSprite('ex_crowd_sunset', false);
	addLuaSprite('BG3_sunset', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end