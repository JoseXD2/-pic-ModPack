function onCreate()
	--background shit


	makeLuaSprite('stage', 'bendy-dem/nightmareBendy_foreground', -600, 300)
	setLuaSpriteScrollFactor('stage', 1.0, 1.0)
        setProperty("stage.scale.x", 2.0);
        setProperty("stage.scale.y", 2.0);

	makeLuaSprite( 'stage2', 'bendy-dem/inky depths', -600, -200)
	setLuaSpriteScrollFactor('stage2', 1.0, 1.0)
        setProperty("stage2.scale.x", 2.0);
        setProperty("stage2.scale.y", 2.0);

	makeAnimatedLuaSprite( 'stage3', 'bendy-dem/Fyre', -250, 100)
	addAnimationByPrefix('stage3', 'idle', 'Penis instance 1', 24, true);
	setLuaSpriteScrollFactor('stage3', 1.0, 1.0)
        setProperty("stage3.scale.x", 2.0);
        setProperty("stage3.scale.y", 2.0);



	addLuaSprite('stage2', false)
	addLuaSprite('stage3', false)
	addLuaSprite('stage', false)

	setProperty('stage2.visible', false)
	setProperty('stage3.visible', false)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('stage.visible', true);
			setProperty('stage2.visible', true);
			setProperty('stage3.visible', false);

		end

		if value1 == '3' then
			setProperty('stage2.visible', true);
			setProperty('stage.visible', true);
			setProperty('stage3.visible', true);

		end
		
		if value1 == '1' then
			setProperty('stage2.visible', false);
			setProperty('stage.visible', true);
			setProperty('stage3.visible', false);
		end
	end
end