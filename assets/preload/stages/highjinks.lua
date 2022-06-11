function onCreate()

setPropertyFromClass('flixel.FlxG','sound.music.volume',0)
setProperty('skipCountdown',true)
--setProperty('cpuControlled',true)
--setProperty('camHUD.visible',false)

end

lastcagespot = 0
swingFactor = 20
function onCreatePost()
makeAnimatedLuaSprite('bg','hj/bg',-476,-1016)
addAnimationByPrefix('bg','bg','BG',0,false)
	addLuaSprite('bg')
setProperty('dad.danceEveryNumBeats',1)
setProperty('dad.alpha',0)
setProperty('boyfriend.danceEveryNumBeats',1)


makeLuaSprite('cage','hj/cage',500,60)
setScrollFactor('cage',0.8,0.8)
	setProperty('cage.origin.y',0)
addLuaSprite('cage')



makeAnimatedLuaSprite('hand2','hj/hand2',768,256)
addAnimationByPrefix('hand2','hand2','hand2',24,false)

makeAnimatedLuaSprite('hand','hj/hand',735,568)
addAnimationByPrefix('hand','hand','hand',24,false)
addLuaSprite('hand2')
setProperty('hand2.alpha',0)
setObjectOrder('hand2',getObjectOrder('dadGroup'))


makeAnimatedLuaSprite('ha','hj/txt_HA',619,75)
addAnimationByPrefix('ha','idle','txt_HA',24,false)
setScrollFactor('ha',0,0)
addLuaSprite('ha')
setProperty('ha.visible',false)

makeAnimatedLuaSprite('yea','hj/txt_YEA',647,239)
addAnimationByPrefix('yea','idle','txt_YEA',24,false)
setScrollFactor('yea',0,0)
addLuaSprite('yea')
setProperty('yea.visible',false)

makeAnimatedLuaSprite('pu','hj/txt_PU',826.9,168)
addAnimationByPrefix('pu','idle','txt_PU',24,false)
setScrollFactor('pu',0,0)
addLuaSprite('pu',true)
setProperty('pu.visible',false)
setProperty('bg.visible',false)

end

function onBeatHit()

objectPlayAnimation('bg','bg',true,7*(curBeat % 2))
objectPlayAnimation('hand','hand',true)
if curBeat == 4 then
setProperty('hand2.visible',false)
setProperty('dad.alpha',0.4)
	addLuaSprite('hand',true)
	addLuaSprite('hand2',false)
end
if curBeat == 1 then

	doTweenY('wwww','cage',-191,1,'backInOut')

end
if curBeat == 3 then

	doTweenX('dddddw','hand2',718,crochet/1000,'circIn')
	doTweenAlpha('wrrrrrww','hand2',1,0.1,'linear')

end
if curBeat == 4 then
	doTweenX('wewwdw','cage',970.15,1.5,'backOut')
	doTweenAngle('wwwdw','cage',0,1.5,'backOut')

end
if curBeat == 7 then
	doTweenX('swingl','cage',950.15,crochet/1000,'sineInOut')

end
if curBeat == 20 then
setProperty('bg.visible',true)
end
if curBeat >= 20 and curBeat < 36 then
	if curBeat % 4 == 0 then
	setProperty('bg.alpha',0.3)
	doTweenAlpha('bum','bg',0,0.2,'linear')
	end
end
if curBeat == 36 then
swingFactor = 50
	doTweenAlpha('br','dad',1,0.2,'linear')
	setProperty('bg.alpha',1)
end

if curBeat >= 36 then
	--setProperty('camGame.zoom',getProperty('defaultCamZoom')+0.3)
	--doTweenZoom('boomm','camGame',getProperty('defaultCamZoom'),0.3,'circOut')
end
 
if curBeat == 239 then

setProperty('hand2.visible',true)
objectPlayAnimation('hand2','hand2')
setProperty('hand.visible',false)
doTweenY('bfmove','boyfriend',1000,0.5,'sineIn')
doTweenAngle('bfmrrrrove','boyfriend',36,0.5,'sineIn')
setProperty('defaultCamZoom',0.9)
setProperty('hand2.x',692)
setProperty('hand2.y',301)
setProperty('dad.danceEveryNumBeats',80)
end

end


function goodNoteHit(id,d,t,s)

setProperty('boyfriend.x',851)
setProperty('boyfriend.y',465)

setProperty('hand.x',735)
setProperty('hand.y',568)

if d == 0 then
doTweenX('bfmove','boyfriend',851-20,0.3,'backOut')
doTweenX('handmove','hand',735-40,0.3,'backOut')
end
if d == 1 then
doTweenY('bfmove','boyfriend',465+20,0.3,'backOut')
doTweenY('handmove','hand',568+40,0.3,'backOut')
end
if d == 2 then
doTweenY('bfmove','boyfriend',465-20,0.3,'backOut')
doTweenY('handmove','hand',568-40,0.3,'backOut')
end
if d == 3 then
doTweenX('bfmove','boyfriend',851+20,0.3,'backOut')
doTweenX('handmove','hand',735+40,0.3,'backOut')
end


end

function opponentNoteHit(id,d,t,s)

setProperty('dad.x',-75)
setProperty('dad.y',-78)

if d == 0 then
doTweenX('dadmove','dad',-115,0.3,'backOut')
end
if d == 1 then
doTweenY('dadmove','dad',-38,0.3,'backOut')
end
if d == 2 then
doTweenY('dadmove','dad',-118,0.3,'backOut')
end
if d == 3 then
doTweenX('dadmove','dad',-35,0.3,'backOut')
end


end                                                                                              

function onEvent(n,v,b)

	if n == 'bubble' then
			setProperty('pu.visible',false)
			setProperty('ha.visible',false)
			setProperty('yea.visible',false)
			setProperty(v .. '.visible',true)
			objectPlayAnimation(v,'idle')
	
	end

end


function onTweenCompleted(t)
if t == 'swingl' then

	doTweenX('swingr','cage',970.15-swingFactor ,crochet/1000,'sineInOut')

end
if t == 'swingr' then

	doTweenX('swingl','cage',970.15+swingFactor ,crochet/1000,'sineInOut')

end


end

function onUpdatePost()

setProperty('cage.angle',2*(getProperty('cage.x')-lastcagespot ))
lastcagespot = getProperty('cage.x')
setPropertyFromClass('flixel.FlxG','sound.music.volume',1)

end