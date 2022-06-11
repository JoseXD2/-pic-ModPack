function onCreate()
	-- background shit
	makeAnimatedLuaSprite('Floor','Floor',-880, -200)addAnimationByPrefix('Floor', 'idle','Floor',24,true)
	objectPlayAnimation('Floor','idle',false)
	scaleObject('Floor', 2.3, 2.3);
	addLuaSprite('Floor', false);
makeLuaText('watermark',  "Port & Opt  By Luna", 0, -2, 550); 
    setTextSize('watermark', 20);
    addLuaText('watermark');
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end