function onCreate()
    
	makeLuaSprite('Charabg', 'Charabg', -550, 1200);
	addLuaSprite('Charabg', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end