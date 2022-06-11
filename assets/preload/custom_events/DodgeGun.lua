function onCreate()
	Dodged = false;
	canDodge = false;
	DodgeTime = 0;
	DodgeBot = false;
end

function onEvent(name,v1,v2)
	if name == 'DodgeGun' then
		DodgeTime = (value1);

		makeLuaSprite('ohnowarning', 'PotionImage', 500, 200)
		addLuaSprite('ohnowarning', true)
		setObjectCamera('ohnowarning', 'other')
		scaleLuaSprite('ohnowarning', 0.70, 0.70)
		makeLuaText('dodgewarning', 'Dodge!', 0, 500, 150)
		setTextSize('dodgewarning', 70)
		addLuaText('dodgewarning', true)
		playSound('load')

		canDodge = true;
		runTimer('timerthing', DodgeTime)
	end
end

function onUpdate()
	if canDodge == true and (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 132) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) then
		Dodged = true;
		playSound('shoot')
		characterPlayAnim('boyfriend', 'singDOWN', true);
		setProperty('boyfriend.specialAnim', true);
		removeLuaSprite('ohnowarning', true)
		removeLuaText('dodgewarning', true)
		canDodge = false

	if botPlay == true then --IT ACTIVATES WHY
		DodgeBot = true;
	end
end
end

function onTimerCompleted(tag)
	if tag == 'timerthing' and Dodged == false then
		setProperty('health', 0);

	elseif tag == 'timerthing' and Dodged == true then
		Dodged = false

	elseif tag == 'timerthing' and DodgeBot == true then --WHY DOESNT THIUS FUCKING WORK
		Dodged = false
	end
end

function onUpdatePost()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') then
		characterPlayAnim('boyfriend', 'singDOWN', true)
	end
end