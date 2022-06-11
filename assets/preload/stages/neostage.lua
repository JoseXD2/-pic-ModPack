function onCreate()
	-- background shit
	makeLuaSprite('backwall', 'stage/backwall', -500, -300);
	setScrollFactor('backwall', 0.9, 0.9);


	addLuaSprite('backwall', false);

	setObjectOrder('backwall', 1);
	setObjectOrder('gf', 3);
	setObjectOrder('bf', 4);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end