function onCreate()
	-- background shit
	makeLuaSprite('street3', 'street3', -500, -300);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	makeLuaSprite('stagefront', 'street3', -650, 600);
	setLuaSpriteScrollFactor('street3', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);
	addLuaSprite('street3', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
