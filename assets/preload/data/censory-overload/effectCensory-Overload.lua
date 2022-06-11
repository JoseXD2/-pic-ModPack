function onCreate()
	makeLuaSprite('c', 'effects/censory-overloadEffect', 0, 0);
	addLuaSprite('c', false);
        scaleObject('c', 2, 2)
	setObjectCamera('c', 'other');
end

function onSongStart()
    makeLuaText('poop', 'Press Button To Dodge or sus', 0, 300, 150)
    setTextSize('poop', 60)
    addLuaText('poop', true)
end

function onUpdate()
    if curBeat == 10 then
        removeLuaText('poop', true)
    end
end