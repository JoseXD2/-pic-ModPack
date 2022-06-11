local fuckcrochetallmyhomiesusemeth = 0 --or it was math?
local defcdsprite =  {"go", "set", "ready"}
local defcdpixelsprite = {"pixelUI/date-pixel", "pixelUI/set-pixel", "pixelUI/ready-pixel"}

function onCreatePost()
		for intro = 1, 3 do
			if getProperty('isPixelStage') == true then --no fucking idea why it works like this
				makeLuaSprite('introshit'..intro, defcdpixelsprite[intro], -6900, -6900)
				scaleLuaSprite('introshit'..intro, 2, 2)
				setProperty('introshit'..intro..'.antialiasing', false)
				scaleLuaSprite('introshit'..intro, 6, 6)
				
			else 
				makeLuaSprite('introshit'..intro, defcdsprite[intro], -6900, -6900)
				
			end
			
			makeLuaSprite('fancymf', nil, 0, 0)
			luaSpriteMakeGraphic('fancymf', screenWidth, screenHeight, '000000')
			setProperty('fancymf.alpha', 0)
				
			setObjectCamera('fancymf', 'other')
			setObjectCamera('introshit'..intro, 'other')
			addLuaSprite('fancymf', true)
			addLuaSprite('introshit'..intro, true)
		end
end
-- kevin if you re reading this i swear this one doesnt break at 1 line (i think?)
function onUpdate()
	if stoprightthereyoucriminalscum then
		setPropertyFromClass('Conductor', 'songPosition',currentpausepos)
		setPropertyFromClass('flixel.FlxG', 'sound.music.time',currentpausepos)
		setProperty('vocals.time',currentpausepos)
		--DO   NOT   DELETE   THIS--
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
		--THIS--
	end	
end

function onPause()
	if stoprightthereyoucriminalscum then
		cameraShake('camGame', 0.008, 0.1)
		playSound('ANGRY')
		return Function_Stop
	else
		if curBeat > 0	then
			currentpausepos = getPropertyFromClass('Conductor', 'songPosition')
			cancelTween('fancypausebg')
			setProperty('fancymf.alpha', 0)
		end
	end
end

function onResume()
	if curBeat > 1 then
		if not stoprightthereyoucriminalscum then
			pausecurcountdown = 4
			runTimer('pausecountdown', fuckcrochetallmyhomiesusemeth)
			setProperty('fancymf.alpha', 0.6)
			stoprightthereyoucriminalscum = true
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	fuckcrochetallmyhomiesusemeth = (1 / ((bpm) / 60))
	if tag == 'pausecountdown' then
		if pausecurcountdown > 0 then	
			screenCenter('introshit'..(pausecurcountdown+1), 'xy')
			doTweenAlpha('leintro'..pausecurcountdown,'introshit'..(pausecurcountdown+1), 0 , fuckcrochetallmyhomiesusemeth)
			
			if getProperty('isPixelStage') == true then  --no fucking idea why it works like this
				playSound('intro'..(pausecurcountdown)..'-pixel')
				
			else
				playSound('intro'..(pausecurcountdown))
			end
		end
		
		if pausecurcountdown == 4 then		
			doTweenAlpha('fancypausebg','fancymf', 0, fuckcrochetallmyhomiesusemeth * 6, 'quartInOut')	
			
			for intro = 1, 3 do
				setProperty('introshit'..intro..'.x' , 6900)
				setProperty('introshit'..intro..'.alpha' , 1)
			end
		end
		
		if pausecurcountdown == 0 then	
			if getProperty('isPixelStage') == true then --no fucking idea why it works like this
				playSound('introGo-pixel')
			else
				playSound('introGo')
			end
			screenCenter('introshit1', 'xy')
			runTimer('letthegamebeggingplease', fuckcrochetallmyhomiesusemeth)
			doTweenAlpha('GO','introshit1', 0 , fuckcrochetallmyhomiesusemeth)
		end
		
			if pausecurcountdown ~= 0 then	
			runTimer('pausecountdown', fuckcrochetallmyhomiesusemeth)
			pausecurcountdown = pausecurcountdown - 1
			
		end
	end
	if tag == 'letthegamebeggingplease' then
			stoprightthereyoucriminalscum = false
			setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1) --this is really dumb, for some reason using the save volume just fucks it up--
			setProperty('vocals.volume', 1)
	end
end
-- i guess i have to put credits uh? well this was made by the certified profesional retarded teniente mantequilla (yes i do my scripts alone now)