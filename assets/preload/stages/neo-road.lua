function onCreate()
	-- background shit
	makeLuaSprite('together', 'roadstuff/BG', -600, 0);
	addLuaSprite('together', false)
        scaleObject('together', 2, 2)

	makeLuaSprite('retry', 'roadstuff/bretry', -600, 0);
	addLuaSprite('retry', false)
        scaleObject('retry', 2, 2)

	makeLuaSprite('town', 'philly/PHILLYAHAHA', -50, 400);
	addLuaSprite('town', false)
        scaleObject('town', 2, 2)
	setProperty('town.scale.x', 1.5)
	setProperty('town.scale.y', 1.5)

	setProperty('retry.visible', false)
	setProperty('town.visible', false)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then

		if value1 == 'back' then
			setProperty('together.visible', true);
			setProperty('retry.visible', false);
			setProperty('town.visible', false);
		end

		if value1 == 'retry' then
			setProperty('together.visible', false);
			setProperty('retry.visible', true);
			setProperty('town.visible', false);
		end
		if value1 == 'town' then
			setProperty('together.visible', false);
			setProperty('retry.visible', false);
			setProperty('town.visible', true);
		end
	end
end