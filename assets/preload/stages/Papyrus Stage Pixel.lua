function onCreate()
	-- background boi
	makeLuaSprite('SnowAndFrezze', 'weeb/SnowAndFrezze', -400, -90);
	setLuaSpriteScrollFactor('SnowAndFrezze', 0.89, 0.9);
	scaleObject('SnowAndFrezze', 6.5, 6.5);
		
	makeLuaSprite('SnowTrees', 'weeb/SnowTrees', -400, -90);
	setLuaSpriteScrollFactor('SnowTrees', 0.9, 0.9);
	scaleObject('SnowTrees', 6.5, 6.5);

	setProperty('SnowAndFrezze.antialiasing', false);
	setProperty('SnowTrees.antialiasing', false);

	addLuaSprite('SnowAndFrezze', false);
	addLuaSprite('SnowTrees', false);
end

function onBeatHit()
	--for every beat
       health = getProperty('health')
    if getProperty('health') > 0.3 then
       setProperty('health', health- 0.0043);
	end
end



