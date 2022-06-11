function onCreate()
	-- background shit
	makeLuaSprite('manifestBG', 'manifestBG', -500, -400);
	setLuaSpriteScrollFactor('manifestBG', 0.9, 0.9);
	
	makeLuaSprite('floorManifest', 'floorManifest', -1050, -204);
	setLuaSpriteScrollFactor('floorManifest', 0.9, 0.9);
	
	addLuaSprite('manifestBG', false);
	addLuaSprite('floorManifest', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end