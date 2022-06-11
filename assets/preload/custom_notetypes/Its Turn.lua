function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Its Turn' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'ItsTurnNote'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
end

function noteMiss(id, direction, noteType, isSustainNote)
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if direction == 0 and isSustainNote == false then
		makeAnimatedLuaSprite('splashLEFT', 'noteSplashesLEFT', 340, 223)
		addAnimationByPrefix('splashLEFT', 'toTheLeft', 'noteSplashes 000', 24, false)
		addLuaSprite('splashLEFT', true)
		runTimer('splashGoneLeft', 0.2, 1)
	end
	if direction == 1 and isSustainNote == false then
		makeAnimatedLuaSprite('splashDOWN', 'noteSplashesDOWN', 465, 223)
		addAnimationByPrefix('splashDOWN', 'toTheDown', 'noteSplashes 000', 24, false)
		addLuaSprite('splashDOWN', true)
		runTimer('splashGoneDown', 0.2, 1)
	end
	if direction == 2 and isSustainNote == false then
		makeAnimatedLuaSprite('splashUP', 'noteSplashesUP', 575, 223)
		addAnimationByPrefix('splashUP', 'toTheUp', 'noteSplashes 000', 24, false)
		addLuaSprite('splashUP', true)
		runTimer('splashGoneUp', 0.2, 1)
	end
	if direction == 3 and isSustainNote == false then
		makeAnimatedLuaSprite('splashRIGHT', 'noteSplashesRIGHT', 684, 223)
		addAnimationByPrefix('splashRIGHT', 'toTheRight', 'noteSplashes 000', 24, false)
		addLuaSprite('splashRIGHT', true)
		runTimer('splashGoneRight', 0.2, 1)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'splashGoneLeft' then
		removeLuaSprite('splashLEFT', false)
	end
	if tag == 'splashGoneRight' then
		removeLuaSprite('splashRIGHT', false)
	end
	if tag == 'splashGoneUp' then
		removeLuaSprite('splashUP', false)
	end
	if tag == 'splashGoneDown' then
		removeLuaSprite('splashDOWN', false)
	end
end
