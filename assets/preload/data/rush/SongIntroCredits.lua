-- Original Code by Sir Top Hat, MorenoTheCappuccinoChugger and Grizzle
-- edited beyond recognition by Jon SpeedArts, with help of my man Kevin Kuntz

--easy script configs
IntroTextSize = 25	--Size of the text for the Now Playing thing.
IntroSubTextSize = 120 --size of the text for the Song Name.
IntroSubText2Size = 60
--easy script configs

--actual script
function onCreate()

	makeAnimatedLuaSprite('mark','rushmark',300, 100)
	addAnimationByPrefix('mark','2','countdown2',24,true)
	setObjectCamera('mark', 'other')
	scaleObject('mark', 1, 1)

	makeAnimatedLuaSprite('ready','rushready',360, 200)
	addAnimationByPrefix('ready','1','countdown1',24,true)
	setObjectCamera('ready', 'other')
	scaleObject('ready', 1, 1)

	makeAnimatedLuaSprite('go','rushgo',480, 300)
	addAnimationByPrefix('go','0','countdowngo',24,true)
	setObjectCamera('go', 'other')
	scaleObject('go', 1, 1)

	makeAnimatedLuaSprite('bf2','characters/BOYFRIEND',800, 300)
	addAnimationByPrefix('bf2','bfidle','BF idle dance',18,true)
	setObjectCamera('bf2', 'other')
	scaleObject('bf2', 0.7, 0.7)

	makeAnimatedLuaSprite('sonic2','characters/sonic',200, 180)
	addAnimationByPrefix('sonic2','sonidle','sonic idle',18,true)
	setObjectCamera('sonic2', 'other')
	scaleObject('sonic2', 0.7, 0.7)

	if difficulty == 2 then
	setProperty('dad.flipX', false)
	setProperty('dad.x', 870)
	setProperty('boyfriend.flipX', false)
	setProperty('boyfriend.x', 200)
	end

	setProperty('bf2.color', getColorFromHex('000000'))
	setProperty('sonic2.color', getColorFromHex('000000'))
	
	--text for the song name
	makeLuaText('JukeBoxSubText', 'RUSH', 500, -185, 60) --songname 
	setTextAlignment('JukeBoxSubText', 'left')
	setObjectCamera('JukeBoxSubText', 'other')
	setProperty('JukeBoxSubText.alpha', 0)
	setTextSize('JukeBoxSubText', IntroSubTextSize)
	setTextFont('JukeBoxSubText', 'rush.ttf') --font
	setTextBorder('JukeBoxSubText', 10, '000000')
	
	
	makeLuaSprite('bg', 'songtitlebg', -100, 0)
	setObjectCamera('bg', 'other')
	scaleObject('bg', 1, 1)

	makeLuaSprite('side', 'songtitlesidething', -5, 0)
	setObjectCamera('side', 'other')
	scaleObject('side', 1, 1)
	doTweenY('side', -200, 3)
	setProperty('side.y', -5)
	doTweenY('sideTweenY', 'side', -1400, 5)

	makeLuaSprite('white', 'songtitlewhite', 0, 0)
	setObjectCamera('white', 'other')
	scaleObject('white', 1, 1)

	makeLuaSprite('white2', 'songtitlewhite', 0, 0)
	setObjectCamera('white2', 'other')
	scaleObject('white2', 1, 1)

	makeLuaSprite('icon', 'songtitleiconls', 1300, 0)
	setObjectCamera('icon', 'other')
	scaleObject('icon', 1, 1)

	makeLuaSprite('bar', 'songtitlecharname', 0, 570)
	setObjectCamera('bar', 'other')
	scaleObject('bar', 1, 1)

	makeAnimatedLuaSprite('dots', 'songtitledots', 1150, 200)
	addAnimationByPrefix('dots','colors','colordots',24,true)
	setObjectCamera('dots', 'other')
	objectPlayAnimation('dots','colors',false)
	scaleObject('dots', 1, 1)

	makeLuaText('JukeBoxSubText2', 'JON SPEEDARTS', 600, -185, 100) --credit
	setTextAlignment('JukeBoxSubText2', 'left')
	setObjectCamera('JukeBoxSubText2', 'other')
	setProperty('JukeBoxSubText2.x', 1300)
	setProperty('JukeBoxSubText2.alpha', 0)
	setTextSize('JukeBoxSubText2', IntroSubText2Size)
	setTextFont('JukeBoxSubText2', 'rush.ttf')
	setTextBorder('JukeBoxSubText2', 0, 'FFFFFF')

	if difficulty == 0 then
	    makeLuaText('JukeBoxSubText3', 'NORMAL', 600, -185, 100) --credit
    elseif difficulty == 1 then
	    makeLuaText('JukeBoxSubText3', 'HARD', 600, -185, 100) --credit
    elseif difficulty == 2 then
		makeLuaText('JukeBoxSubText3', 'OPPONENT', 600, -185, 100) --credit
	end
	setTextAlignment('JukeBoxSubText3', 'left')
	setObjectCamera('JukeBoxSubText3', 'other')
	setProperty('JukeBoxSubText3.x', 1300)
	setProperty('JukeBoxSubText3.alpha', 0)
	setTextSize('JukeBoxSubText3', IntroSubText2Size)
	setTextFont('JukeBoxSubText3', 'rush.ttf')
	setTextBorder('JukeBoxSubText3', 5, '000000')

	addLuaSprite('white2', true)
	addLuaSprite('bg', true)
	addLuaText('JukeBoxSubText2')
	addLuaText('JukeBoxSubText3')
	addLuaText('JukeBoxSubText')
	addLuaSprite('side', true)
	addLuaSprite('bar', true)
	addLuaSprite('dots', true)
	addLuaSprite('icon', true)
	addLuaSprite('white', true)
	addLuaSprite('bf2', true)
	addLuaSprite('sonic2', true)

end

function onUpdatePost(el)
	setProperty('ass.x', getProperty('JukeBoxSubText.x') - 90)
	setProperty('JukeBoxSubText.y', 150)
	setProperty('JukeBoxSubText2.y', 450)
	setProperty('JukeBoxSubText3.y', 300)
end

function onSongStart()
	doTweenAlpha('whiteA', 'white', 0, 0.85, 'SineIn')
	doTweenX('MoveInFour', 'JukeBoxSubText', 400, 1, 'SineInOut')
	doTweenX('MoveInFive', 'JukeBoxSubText2', 500, 1, 'SineInOut')
	doTweenAlpha('JBST2', 'JukeBoxSubText2', 100, 2, 'SineIn')
	doTweenX('MoveInSix', 'JukeBoxSubText3', 400, 1, 'SineInOut')
	doTweenAlpha('JBST3', 'JukeBoxSubText3', 100, 2, 'SineIn')
	doTweenAlpha('JBST', 'JukeBoxSubText', 100, 2, 'SineIn')
	objectPlayAnimation('icon','spin',false)
	doTweenX('iconx', 'icon', 995, 0.85, 'SineOut')
	doTweenY('icony', 'icon', 300, 0.85, 'SineOut')
	doTweenX('barx', 'bar', -2550, 5)
	doTweenAlpha('bfal', 'bf2', 0, 0.85, 'SineIn')
	doTweenAlpha('sonal', 'sonic2', 0, 0.85, 'SineIn')
	doTweenAlpha('goal', 'go', 0, 0.85, 'SineIn')
	doTweenAlpha('2al', 'mark', 0, 0.85, 'SineIn')
	doTweenAlpha('1al', 'ready', 0, 0.85, 'SineIn')

	runTimer('JukeBoxWait', 3, 1)
end

function onCountdownTick(counter)
    if counter == 1 then
		addLuaSprite('mark', true)
	    objectPlayAnimation('mark', '2');
    end
	if counter == 2 then
		addLuaSprite('ready', true)
	    objectPlayAnimation('ready', '1');
    end
	if counter == 3 then
		addLuaSprite('go', true)
		objectPlayAnimation('go', '0');
	end
end

function onBeatHit()
	objectPlayAnimation('bf2', 'bfidle');
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutFour', 'JukeBoxSubText', 1250, 0.85, 'quadIn')
		doTweenX('MoveOutFive', 'JukeBoxSubText2', -225, 0.85, 'quadIn')
		doTweenX('MoveOutSix', 'JukeBoxSubText3', -225, 0.85, 'quadIn')
		doTweenAlpha('JBST', 'JukeBoxSubText', 0, 0.83, 'circOut')
		doTweenAlpha('JBST2', 'JukeBoxSubText2', 0, 0.83, 'circOut')
		doTweenAlpha('JBST3', 'JukeBoxSubText3', 0, 0.83, 'circOut')
		doTweenAlpha('J', 'bg', 0, 0.9)
		doTweenX('sideTweenX', 'side', -225, 0.83, 'circOut')
		doTweenAlpha('whiteB', 'white2', 0, 1)
		doTweenAlpha('iconal', 'icon', 0, 0.83)
		doTweenAlpha('dotsal', 'dots', 0, 0.83)
		doTweenAlpha('baral', 'bar', 0, 0.83)
	end
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

