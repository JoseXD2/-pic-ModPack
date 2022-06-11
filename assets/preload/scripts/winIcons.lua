disabledp1 = true
disabledp2 = true

iconchars = {'nusky','demon-sky','sky-annoyed','bf-sky','gf-sky','bfos','gfos','osky','bf-chained'}

function onCreatePost()


for i=1,9 do
	if iconchars[i] == dadName then disabledp2 = false end
	if iconchars[i] == boyfriendName then disabledp1 = false end

end




if not disabledp2 then
loadFrames('iconP2','icons/'..dadName)
addAnimationByPrefix('iconP2','win','icon',0,false)
end
if not disabledp1 then
loadFrames('iconP1','icons/'..boyfriendName)
addAnimationByPrefix('iconP1','win','icon',0,false)
setProperty('iconP1.flipX',true)
end


end



function onUpdatePost()

if not getProperty('paused') then
if not disabledp1 then

setProperty('iconP1.offset.y',0)
setProperty('iconP1.offset.x',-20)
objectPlayAnimation('iconP1','win',true)
if getProperty('healthBar.percent') < 20 then setProperty('iconP1.animation.curAnim.curFrame',1)  end
if getProperty('healthBar.percent') > 80 then setProperty('iconP1.animation.curAnim.curFrame',2)  end
end
if not disabledp2 then
setProperty('iconP2.offset.y',0)
setProperty('iconP2.offset.x',-20)
objectPlayAnimation('iconP2','win',true)
if getProperty('healthBar.percent') < 20 then setProperty('iconP2.animation.curAnim.curFrame',2)  end
if getProperty('healthBar.percent') > 80 then setProperty('iconP2.animation.curAnim.curFrame',1)  end
end
end
end
