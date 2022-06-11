--Code by doctor krazy, credit me if used.
--You may modify it to suit your needs.

damage = 0.5
generalvolume = 0.5
canDodge = false
dodged = false
instakill = false

function onEvent(name, v1, v2)
	if name == 'DodgeMechanic2' then
		beat0 = curBeat+1
		beat1 = curBeat+2
		beat2 = curBeat+3
		beat3 = curBeat+4

		if v1 == 'true' then
			instakill = true
		end
	end
end

function onCreate()
	makeAnimatedLuaSprite('kill2', 'Sans_Shit_NM', 600, 300)
	--addAnimationByPrefix('kill', 'prepare', 'kb_attack_animation_prepare', 24, false)
	addAnimationByPrefix('kill2', 'fire2', 'Bones boi instance 1', 24, false)
	scaleObject('kill2', 0.75, 0.75)
	setObjectCamera('kill2', 'camHUD')
	addLuaSprite('kill2', true)
	setProperty('kill2.alpha', 0)
	
	makeAnimatedLuaSprite('warning2', 'NT846_blue', 600, 300)
	addAnimationByPrefix('warning2', 'alert2', 'AlarmBlue instance 1', 24, false)
	scaleObject('warning2', 0.75, 0.75)
	updateHitbox('warning2')
	setObjectCamera('warning2', 'camHUD')
	addLuaSprite('warning2', true)
	setProperty('warning2.alpha', 0)
	

	makeAnimatedLuaSprite('dodgedd','DodgeMechs',0,0)
	addAnimationByPrefix('dodgedd','bfdodge','Dodge instance 1',24,false)
end

function onUpdatePost(elapsed)
	if keyJustPressed('right') and canDodge and not dodged then
		dodged = true
		
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	dodged = false
end

doWarning = function()
	playSound('alert', generalvolume)
	setProperty('warning2.alpha', 1)
	objectPlayAnimation('warning2', 'alert2', true);
	setProperty('kill2.alpha', 1)
end
doWarning2 = function()
	setProperty('warning2.alpha', 1)
	objectPlayAnimation('warning2', 'alert2', true);
	canDodge = true
end
doDodge = function()
	playSound('attack', generalvolume)	
	objectPlayAnimation('kill2', 'fire2', true);
	if dodged then
		if instakill then
			setProperty('health', -1)
		else
			setProperty('health', getProperty('health') - damage)
			characterPlayAnim('boyfriend', 'dodge', true)
		setProperty('boyfriend.specialAnim', true)
		characterPlayAnim('boyfriend', 'hurt', true)
			setProperty('boyfriend.specialAnim', true)

		end
	elseif not dodged then
	
		
		setProperty('warning2.alpha', 0)
		
		runTimer('Dodging', 1)
		
	end
	canDodge = false
end

doBye = function()
	setProperty('warning2.alpha', 0)
	setProperty('kill2.alpha', 0)
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

	if beat3 == curBeat then
		doBye()
	end
end

function onTimerComplete()
	if tag == 'Dodging' then
	setProperty('kill2.alpha', 0)
	end
end