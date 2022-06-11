
local followchars = true
local modchart = true
local xx = 960
local yy = 660
local xx2 = 960
local yy2 = 660
local ofs = 30
local del = 0
local del2 = 0
local bgs = {'sonic2','sonic'}
local defaultNotePos = {}

function onCreate()
	makeAnimatedLuaSprite('fx', 'bg/vintage', 0, 0)
	addAnimationByPrefix('fx', 'idle', 'idle', 16, true)
	scaleObject('fx', 3, 3)
	setObjectCamera('fx', 'camHud')
	objectPlayAnimation('fx', 'idle', true)
	setProperty('fx.alpha', 0)

	addCharacterToList('doulbe Son', 'boyfriend')
	addCharacterToList('fleetway', 'boyfriend')

	for i = 1,3 do
		makeLuaSprite(bgs[i], 'bg/'..bgs[i], 0, 0)
		addLuaSprite(bgs[i], false)
	end
	precacheSound('stat')

end

function onSongStart()
	addLuaSprite('fx', true)
	for i = 0,7 do
		x = getPropertyFromGroup('strumLineNotes', i, 'x')
		table.insert(defaultNotePos, x)
	end
end

function onUpdate(elapsed)
	if modchart == true then
		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
		end
	end
	if followchars == true then
		if mustHitSection == false then
		  if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
			triggerEvent('Camera Follow Pos',xx-ofs,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
			triggerEvent('Camera Follow Pos',xx+ofs,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singUP' then
			triggerEvent('Camera Follow Pos',xx,yy-ofs)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
			triggerEvent('Camera Follow Pos',xx,yy+ofs)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
			triggerEvent('Camera Follow Pos',xx-ofs,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
			triggerEvent('Camera Follow Pos',xx+ofs,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
			triggerEvent('Camera Follow Pos',xx,yy-ofs)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
			triggerEvent('Camera Follow Pos',xx,yy+ofs)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		else
		  if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
			triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
			triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
			triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
			triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
			triggerEvent('Camera Follow Pos',xx2,yy2)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx2,yy2)
		  end
		end
	else
		triggerEvent('Camera Follow Pos','','')
	end
end

function onStartCountdown()
	setProperty('gf.alpha', 0)
	setProperty('dad.alpha', 0)
	setProperty('iconP2.alpha', 0)

	return Function_Continue
end

function onStepHit()
	if curStep == 2 then
        	noteTweenY("NoteMove", 1, 10, 0.1, cubeInOut)
	end
	if curStep == 1 or curStep == 127 or curStep == 511 or curStep == 776 or curStep == 783 or curStep == 901 or curStep == 974 or curStep == 1318 or curStep == 1533 or curStep == 1764 or curStep == 2011 or curStep == 2046 or curStep == 2174 or curStep == 2428 or curStep == 2581 or curStep == 2848 or curStep == 2875 or curStep == 2887 or curStep == 2895 then
		fleetON()
	end
	if curStep == 63 or curStep == 191 or curStep == 505 or curStep == 769 or curStep == 780 or curStep == 846 or curStep == 1278 or curStep == 1321 or curStep == 1662 or curStep == 1774 or curStep == 2110 or curStep == 2302 or curStep == 2492 or curStep == 2557 or curStep == 2621 or curStep == 2718 or curStep == 2781 or curStep == 2855 or curStep == 2883 or curStep == 2891 or curStep == 2903 then
		fleetOFF()
	end
	if curStep == 255 or curStep == 638 or curStep == 906 or curStep == 1150 or curStep == 1374 or curStep == 1790 or curStep == 2269 or curStep == 2525 or curStep == 2654 or curStep == 2748 or curStep == 2814 then
		double()
	end
end

function fleetON()
	setProperty('fx.alpha', 0.8)
	setProperty('sonic.alpha', 0)
	doTweenAlpha('fleetON', 'fx', 0, 1, 'linear')
	playSound('stat', 0.3)
	triggerEvent('Change Character', 0, 'fleetway')
	triggerEvent('Change Character', 1, 'fleetway')
	noteTweenX("noteLeft", 4, defaultNotePos[5], 0.1, "linear")
	noteTweenX("noteLeft2", 5, defaultNotePos[6], 0.1, "linear")
	noteTweenX("noteLeft3", 6, defaultNotePos[7], 0.1, "linear")
	noteTweenX("noteLeft4", 7, defaultNotePos[8], 0.1, "linear")
end

function fleetOFF()
	setProperty('fx.alpha', 0.8)
	setProperty('sonic.alpha', 1)
	doTweenAlpha('fleetON', 'fx', 0, 1, 'linear')
	playSound('stat', 0.3)
	triggerEvent('Change Character', 0, 'sonic')
	triggerEvent('Change Character', 1, 'sonic')
	noteTweenX("noteLeft", 4, defaultNotePos[1], 0.1, "linear")
	noteTweenX("noteLeft2", 5, defaultNotePos[2], 0.1, "linear")
	noteTweenX("noteLeft3", 6, defaultNotePos[3], 0.1, "linear")
	noteTweenX("noteLeft4", 7, defaultNotePos[4], 0.1, "linear")
end

function double()
	setProperty('fx.alpha', 0.8)
	setProperty('sonic.alpha', 0)
	doTweenAlpha('fleetON', 'fx', 0, 1, 'linear')
	playSound('stat', 0.3)
	triggerEvent('Change Character', 0, 'doulbe Son')
	triggerEvent('Change Character', 1, 'sonic')
	noteTweenX("noteLeft", 4, defaultNotePos[3], 0.1, "linear")
	noteTweenX("noteLeft2", 5, defaultNotePos[4], 0.1, "linear")
	noteTweenX("noteLeft3", 6, defaultNotePos[5], 0.1, "linear")
	noteTweenX("noteLeft4", 7, defaultNotePos[6], 0.1, "linear")
end

function onGameOver()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic')
	modchart = false
	return Function_Continue;
end