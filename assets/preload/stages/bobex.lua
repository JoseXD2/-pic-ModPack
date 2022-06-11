function onCreate()
	-- background shit
	makeLuaSprite('BG1', 'BG1', -240, -10);
	setLuaSpriteScrollFactor('BG1', 0.9, 0.9);
	
        makeLuaSprite('BG2', 'BG2', -240, -60);
	setLuaSpriteScrollFactor('BG2', 0.9, 0.9);
	
        makeLuaSprite('ex_crowd', 'ex_crowd', 50, 150);
	setLuaSpriteScrollFactor('ex_crowd', 0.9, 0.9);
	
	makeLuaSprite('BG3', 'BG3', -270, -130);
	setLuaSpriteScrollFactor('BG3', 0.9, 0.9);
	
	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('ex_crowd', false);
	addLuaSprite('BG3', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end