--Code by doctor krazy, credit me if used.
--You may modify it to suit your needs.

damage = 0.5
generalvolume = 0.5
canDodge = false
dodged = false
instakill = false

function onEvent(name, v1, v2)
	if name == 'DodgeMechanic1' then
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
	makeAnimatedLuaSprite('kill1', 'Sans_Shit_NM', 600, 300)
	--addAnimationByPrefix('kill', 'prepare', 'kb_attack_animation_prepare', 24, false)
	addAnimationByPrefix('kill1', 'fire1', 'Bones Orange instance 1', 24, false)
	scaleObject('kill1', 0.75, 0.75)
	
	setObjectCamera('kill1', 'camHUD')
	addLuaSprite('kill1', true)
	setProperty('kill1.alpha', 0)
	

	makeAnimatedLuaSprite('warning1', 'NT846_maucam', 600, 300)
	addAnimationByPrefix('warning1', 'alert1', 'AlarmOrange instance 1', 24, false)
	scaleObject('warning1', 0.75, 0.75)
	--updateHitbox('warning1')
	setObjectCamera('warning1', 'camHUD')
	addLuaSprite('warning1', true)
	setProperty('warning1.alpha', 0)

	
	
end

function onUpdatePost(elapsed)
	if keyJustPressed('right') and canDodge and not dodged then
		dodged = true
		runTimer('Dodging', 1)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	dodged = false
end

doWarning = function()
	playSound('alert', generalvolume)
	setProperty('warning1.alpha', 1)
	objectPlayAnimation('warning1', 'alert1', true);
	setProperty('kill1.alpha', 1)
end
doWarning2 = function()
	setProperty('warning1.alpha', 1)
	objectPlayAnimation('warning1', 'alert1', true);
	canDodge = true
end
doDodge1 = function()
	playSound('attack', generalvolume)	
	objectPlayAnimation('kill1', 'fire1', true);
	if not dodged then
		if instakill then
			setProperty('health', -1)
			setProperty('warning1.alpha', 0)
			
		else
			setProperty('health', getProperty('health') - damage)
			characterPlayAnim('boyfriend', 'hurt', true)
			setProperty('boyfriend.specialAnim', true)
			setProperty('warning1.alpha', 0)
			
		end
	elseif dodged then
		characterPlayAnim('boyfriend', 'dodge', true)
		setProperty('boyfriend.specialAnim', true)
		setProperty('warning1.alpha', 0)
		
		
	end
	canDodge = false
end

doBye = function()
	setProperty('warning1.alpha', 0)
	setProperty('kill1.alpha', 0)
end

function onTimerCompleted(tag)
if tag == 'Dodging' then
	setProperty('kill1.alpha', 0)
end
end
function onBeatHit()
	if beat0 == curBeat then
		doWarning()
	end
	if beat1 == curBeat then
		doWarning2()
	end
	if beat2 == curBeat then
		doDodge1()
	end
	if beat3 == curBeat then
		doBye()
	end
end