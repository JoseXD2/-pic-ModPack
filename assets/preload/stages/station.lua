function onCreate()

makeLuaSprite('bg','bg',-312.05,-48)
addLuaSprite('bg')
setScrollFactor('bg',0.2,0.2)

makeLuaSprite('cloud','cloud',-253.2,6)
addLuaSprite('cloud')
setScrollFactor('cloud',0.1,0.1)

makeAnimatedLuaSprite('train','train',-2200,234)
addAnimationByIndices('train','closed','train','0',0)
addAnimationByIndices('train','open','train','0,1,2,3,4,5,6,7',24)
addAnimationByIndices('train','close','train','8,9,10,11,12,13,14',24)
addAnimationByIndices('train','opened','train','8',0)
addLuaSprite('train')
setScrollFactor('train',0.6,0.6)

makeAnimatedLuaSprite('thugtext','thugtext',400,514)
addAnimationByIndices('thugtext','opentext','thugtext','0,1,2,3,4,5,6,7,8,9,10,11,12,4,5,6,7,8,9,10,11,12,4,5,6,7,8,9,10,11,12,4,5,6,7,8,9,10,11,12',24)
addLuaSprite('thugtext',true)
setProperty('thugtext.visible',false)

makeAnimatedLuaSprite('gaytext','gaytext',678,430)
addAnimationByIndices('gaytext','opentext','gaytext','0,1,2,3,4,5,6,7,8,9,10,11,12,4,5,6,7,8,9,10,11,12,4,5,6,7,8,9,10,11,12,4,5,6,7,8,9,10,11,12',24)
addLuaSprite('gaytext',true)
setProperty('gaytext.visible',false)


makeLuaSprite('station','station',-424.25,-159)
addLuaSprite('station')
setScrollFactor('station',0.7,0.7)
		runTimer('trainCome',4)

end
function onTimerCompleted(t,l,ll)

	if t == 'trainCome' then
		setProperty('train.x', -2200)
		doTweenX('ee','train',-426.25,4,'sineOut')
		runTimer('trainOpen',   4)
	end

	if t == 'trainOpen' then
		objectPlayAnimation('train','open')
		runTimer('trainClose',10)
		
	end

	if t == 'trainClose' then
		objectPlayAnimation('train','close')
		runTimer('trainRide',4)
		
	end

	if t == 'trainRide' then
		doTweenX('ee','train',1700,4,'sineIn')
		runTimer('trainCome',20)
		
	end


end

function onCreatePost()

--for i=0,getProperty('unspawnNotes.length') do

--end

for i=0, 3 do
	setPropertyFromGroup('opponentStrums',i,'downScroll',false)
	setPropertyFromGroup('opponentStrums',i,'y',80)


end


end



function onEvent(n,v,b)

if n == 'Object Play Animation' then

if b == 'closetext' then
	
for i=0, 3 do
	setPropertyFromGroup('playerStrums',i,'alpha',1)
	setPropertyFromGroup('opponentStrums',i,'alpha',1)
end
	if v == 'gaytext' then setProperty('gaytext.visible',false) end
	if v == 'thugtext' then setProperty('thugtext.visible',false) end

end
if b == 'opentext' then
	

for i=0, 3 do
	setPropertyFromGroup('opponentStrums',i,'alpha',0.7)
	setPropertyFromGroup('playerStrums',i,'alpha',0.7)
end


	if v == 'gaytext' then setProperty('gaytext.visible',true) end
	if v == 'thugtext' then setProperty('thugtext.visible',true) end

end

end


end