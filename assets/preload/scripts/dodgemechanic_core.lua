--Code by doctor krazy, credit me if used.
--You may modify it to suit your needs.

damage = 0.5
generalvolume = 0.5
canDodge = false
dodged = false
instakill = false

function onEvent(name, v1, v2)
	if name == 'DodgeMechanic' then
		beat0 = curBeat+1
		beat1 = curBeat+2
		beat2 = curBeat+3

		if v1 == 'true' then
			instakill = true
		end
	end
end

function onCreate()
	makeAnimatedLuaSprite('kill', 'DodgeMechs', 600, 310)
	--addAnimationByPrefix('kill', 'prepare', 'kb_attack_animation_prepare', 24, false)
	addAnimationByPrefix('kill', 'fire', 'Bones boi instance 1', 24, false)
	scaleObject('kill', 0.75, 0.75)
	setObjectCamera('kill', 'camHUD')
	addLuaSprite('kill', true)
	setProperty('kill.alpha', 0)
	
	makeAnimatedLuaSprite('warning', 'DodgeMechs', 600, 290)
	addAnimationByPrefix('warning', 'alert', 'Alarm instance 1', 24, false)
	scaleObject('warning', 0.75, 0.75)
	updateHitbox('warning')
	setObjectCamera('warning', 'camHUD')
	addLuaSprite('warning', true)
	setProperty('warning.alpha', 0)

	makeAnimatedLuaSprite('dodgedd','DodgeMechs',0,0)
	addAnimationByPrefix('dodgedd','bfdodge','Dodge instance 1',24,false)
end

function onUpdatePost(elapsed)
	if keyJustPressed('right') and canDodge and not dodged then
		dodged = true
		runTimer('Dodging', 1)
		runTimer('bug',1.1)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Dodging' then dodged = false
	end

	if tag == 'bug' then setProperty('kill.alpha', 0)
		setProperty('warning.alpha', 0)
	end

	
end

doWarning = function()
	playSound('alert', generalvolume)
	setProperty('warning.alpha', 1)
	objectPlayAnimation('warning', 'alert', true);
	setProperty('kill.alpha', 1)
end
doWarning2 = function()
	setProperty('warning.alpha', 1)
	objectPlayAnimation('warning', 'alert', true);
	canDodge = true
end
doDodge = function()
	playSound('attack', generalvolume)	
	objectPlayAnimation('kill', 'fire', true);
	if not dodged then
		if instakill then
			setProperty('health', -1)
		else
			setProperty('health', getProperty('health') - damage)
			characterPlayAnim('boyfriend', 'hurt', true)
			setProperty('boyfriend.specialAnim', true)
		end
	elseif dodged then
		characterPlayAnim('boyfriend', 'dodge', true)
		setProperty('boyfriend.specialAnim', true)
		setProperty('warning.alpha', 0)
		
	end
	canDodge = false
end

function onBeatHit()
	if beat0 == curBeat then
		doWarning()
	end
	if beat1 == curBeat then
		doWarning2()
	end
	if beat2 == curBeat then
		doDodge()
	end
end