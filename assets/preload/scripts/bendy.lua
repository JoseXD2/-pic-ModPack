function onCreate()
	if dadName == 'bendy-dem' then
		makeAnimatedLuaSprite('animatedicon', 'icons/UI_assets', getProperty('iconP2.x'), getProperty('iconP2.y')) 
		makeAnimatedLuaSprite('animatedicon2', 'icons/UI_assets', getProperty('iconP2.x'), getProperty('iconP2.y')) 		

		addAnimationByPrefix('animatedicon', 'normal', 'nightmare bendy normal', 15, true)
		addAnimationByPrefix('animatedicon', 'losing', 'bendy normal', 24, true)
		addAnimationByPrefix('animatedicon', 'winning', 'bendy normal', 24, true)


		addAnimationByPrefix('animatedicon2', 'normal', 'bendy normal', 24, true)
		addAnimationByPrefix('animatedicon2', 'losing', 'bendy normal', 24, true)
		addAnimationByPrefix('animatedicon2', 'winning', 'nightmare bendy win', 15, true)



		setScrollFactor('animatedicon', 0, 0)
		setScrollFactor('animatedicon2', 0, 0)
		setObjectCamera('animatedicon2', 'other') -- either is under the health bar or nothing
		setObjectCamera('animatedicon', 'other') -- either is under the health bar or nothing

		addLuaSprite('animatedicon', true)
		addLuaSprite('animatedicon2', true)







		objectPlayAnimation('animatedicon', 'normal', true)










		setProperty('animatedicon.offset.x', 0)	                
		setProperty('animatedicon.offset.y', 20)
		setProperty('animatedicon2.offset.x', 40)	                
		setProperty('animatedicon2.offset.y', 70)








	end
end

function onUpdate(elapsed)
	if dadName == 'bendy-dem' then
		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon', 'normal', false)
			objectPlayAnimation('animatedicon2', 'normal', false)

 		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon', 'winning', false)
			objectPlayAnimation('animatedicon2', 'winning', false)



		elseif getProperty('health') < 6.0 then
			objectPlayAnimation('animatedicon', 'normal', false) 
			objectPlayAnimation('animatedicon2', 'normal', false)
                      

		end
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon.x', getProperty('iconP2.x'))
	setProperty('animatedicon.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon.y', getProperty('iconP2.y') + 15)
	setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y'))

	setProperty('animatedicon1.x', getProperty('iconP2.x'))
	setProperty('animatedicon1.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon1.y', getProperty('iconP2.y') + 15)
	setProperty('animatedicon1.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon1.scale.y', getProperty('iconP2.scale.y'))


	setProperty('animatedicon2.x', getProperty('iconP2.x'))
	setProperty('animatedicon2.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon2.y', getProperty('iconP2.y') + 15)
	setProperty('animatedicon2.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon2.scale.y', getProperty('iconP2.scale.y'))



end