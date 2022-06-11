function onCreate()
	makeAnimatedLuaSprite('static', 'tripletroublestuff/Phase3Static') --change to your static image path
	addAnimationByPrefix('static', 'idle', 'Phase3Static instance 1', 24, false);
	scaleObject('static', 4,4);
	setProperty('static.alpha', 0.7);
	setObjectCamera('static', 'hud')
	setProperty('static.visible', false);
	addLuaSprite('static');
	objectPlayAnimation('static', 'idle', false);
end

function onEvent(name, v1, v2)
	if name == 'static' then
		setProperty('static.visible', true);
		objectPlayAnimation('static', 'idle', false);
	end
end

function onUpdate()
	if getProperty('static.visible') == true and getProperty('static.animation.curAnim.finished') == true then
		setProperty('static.visible', false);
	end
end