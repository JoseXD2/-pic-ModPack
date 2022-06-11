local bullets = 0 --creates variable

function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'PotionNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'PotionNote'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			precacheImage('PotionNote')
			makeLuaSprite('POTIONTHING','PotionImage', 1030, 500)
			setLuaSpriteScrollFactor('PotionImage', 1, 1);
			scaleObject('POTIONTHING', 0.4, 0.4);
			addLuaSprite('POTIONTHING', true)
			setObjectCamera('POTIONTHING', 'hud')
			makeLuaText('potionpress', bullets, 0, 1100, 600); --variable gets put with lua text
			setTextSize('potionpress', 70);
			setTextAlignment('potionpress', 'potionpress' == 'left')
			addLuaText('potionpress');
			makeLuaText('potionWarning', 'Dodged Bullets', 0, 980, 500);
			setTextSize('potionWarning', 35);
			setTextAlignment('potionWarning', 'potionWarning' == 'left')
			addLuaText('potionWarning');
			if downscroll == true then
				if getPropertyFromClass('ClientPrefs', 'downScroll') then --forces upscroll because i cant do it with upscroll to make the thingys go down because im too lazy :(
					setPropertyFromClass("ClientPrefs", "downScroll", false)
					doTweenY("tween10", "healthBar", screenHeight * 0.89 ,0.25, 'quadOut')
					doTweenY("tween11down", "scoreTxt", screenHeight * 0.89 + 36, 0.25, "quadOut")
					setProperty("strumLine.y", 50)
					doTweenY("tween8", 'timeTxt', 20 ,0.25, 'quadOut')
					doTweenY("tween9", 'timeBar', 20 + getProperty('timeTxt.height') / 4,0.25, 'quadOut')
			
					for i = 1, 2 do doTweenY("tweenicon"..i, "iconP"..i, screenHeight * 0.9 - (getProperty('iconP'..i..".height") / 2) ,0.25, 'quadOut') end
			
					for i = 0, 8 do noteTweenY("tween"..i, i, 50, 0.25, 'quadOut') end
				else
					setPropertyFromClass("ClientPrefs", "downScroll", true)
			
					setProperty("strumLine.y", screenHeight - 150)
			
					doTweenY("tween10down", "healthBar", 54 ,0.25, 'quadOut')
					doTweenY("tween11down", "scoreTxt", 94, 0.25, "quadOut")
			
					doTweenY("tween8down", 'timeTxt', screenHeight - 45,0.25, 'quadOut')
					doTweenY("tween9down", 'timeBar', screenHeight - 45 + getProperty('timeTxt.height') / 4,0.25, 'quadOut')
			
					for i = 1, 2 do doTweenY("tweenicon"..i.."down", "iconP"..i, 50 - (getProperty('iconP'..i..".height") / 2) ,0.25, 'quadOut') end
			
			
					for i = 0, 8 do noteTweenY("tween"..i.."down", i, getProperty('strumLine.y'), 0.25, 'quadOut') end
				end
			end
		end
	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote) -- if hit note it does nothing but the counter goes up and plays a sound
	if noteType == 'PotionNote' then
		playSound('shoot', 1)
		precacheSound('shoot')
		bullets = bullets + 1;
	end
end
function noteMiss(id, direction, noteType, isSustainNote) --if you miss it takes away hp
	if noteType == 'PotionNote' then
		setProperty('health', getProperty('health')-0.1)
    end
end

function onUpdate() --if you die it will remove the counter 
    setTextString('potionpress', bullets);
    if inGameOver then
        removeLuaText('potionpress', true)
    end
end

function onGameOverStart() --plays a different animation on gameover's start with seperate songs
	if songName == 'censory-overload' then
		objectPlayAnimation('boyfriend', 'pass', true);
	end
	if songName == 'carefree' then
		objectPlayAnimation('boyfriend', 'pass', true);
	end
	if songName == 'careless' then
		objectPlayAnimation('boyfriend', 'pass', true);
	end
end