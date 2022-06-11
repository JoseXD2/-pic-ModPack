function onCreate()
	-- background shit
	makeLuaSprite('street2', 'street2', -500, -400);
	setLuaSpriteScrollFactor('street2', 0.9, 0.9);
	makeLuaSprite('stagefront', 'street2', -1000, 200);
	setLuaSpriteScrollFactor('street2', 0.9, 0.9);
	scaleObject('street2', 1.1, 1.1);
	addLuaSprite('street2', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
