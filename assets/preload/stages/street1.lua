function onCreate()
	-- background shit
	makeLuaSprite('street1', 'street1', 500, -100);
	setLuaSpriteScrollFactor('street1', 0.9, 0.9);
	makeLuaSprite('street1', 'street1', -500, -400);
	setLuaSpriteScrollFactor('street1', 0.9, 0.9);
	scaleObject('street1', 1.1, 1.1);
	addLuaSprite('street1', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
