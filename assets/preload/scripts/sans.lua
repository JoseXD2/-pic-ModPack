function onCreate()
	if dadName == 'sans-dem' then
		makeAnimatedLuaSprite('animatedicon', 'icons/UISansIcon_assets', getProperty('iconP2.x'), getProperty('iconP2.y')) 
		makeAnimatedLuaSprite('animatedicon1', 'icons/UISansIcon_assets1', getProperty('iconP2.x'), getProperty('iconP2.y')) 
		makeAnimatedLuaSprite('animatedicon2', 'icons/UISansIcon_assets2', getProperty('iconP2.x'), getProperty('iconP2.y')) 		

		addAnimationByPrefix('animatedicon', 'normal', 'normal', 24, true)
		addAnimationByPrefix('animatedicon', 'losing', 'loss', 24, true)
		addAnimationByPrefix('animatedicon', 'winning', 'win', 24, true)

		addAnimationByPrefix('animatedicon1', 'normal', 'normal', 24, true)
		addAnimationByPrefix('animatedicon1', 'losing', 'loss', 24, true)
		addAnimationByPrefix('animatedicon1', 'winning', 'win', 24, true)

		addAnimationByPrefix('animatedicon2', 'normal', 'normal', 24, true)
		addAnimationByPrefix('animatedicon2', 'losing', 'loss', 24, true)
		addAnimationByPrefix('animatedicon2', 'winning', 'win', 24, true)



		setScrollFactor('animatedicon', 0, 0)
		setScrollFactor('animatedicon1', 0, 0)
		setScrollFactor('animatedicon2', 0, 0)
		setObjectCamera('animatedicon2', 'other') -- either is under the health bar or nothing
		setObjectCamera('animatedicon1', 'other') -- either is under the health bar or nothing
		setObjectCamera('animatedicon', 'other') -- either is under the health bar or nothing

		addLuaSprite('animatedicon', true)
		addLuaSprite('animatedicon1', true)
		addLuaSprite('animatedicon2', true)







		objectPlayAnimation('animatedicon', 'normal', true)










		setProperty('animatedicon.offset.x', 70)	                
		setProperty('animatedicon.offset.y', 90)
		setProperty('animatedicon1.offset.x', -40)	                
		setProperty('animatedicon1.offset.y', 40)
		setProperty('animatedicon2.offset.x', 100)	                
		setProperty('animatedicon2.offset.y', 70)








	end
end

function onUpdate(elapsed)
	if dadName == 'sans-dem' then
		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon1', 'losing', false)
			objectPlayAnimation('animatedicon', 'losing', false)
			objectPlayAnimation('animatedicon2', 'losing', false)

 		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon1', 'winning', false)
			objectPlayAnimation('animatedicon', 'winning', false)
			objectPlayAnimation('animatedicon2', 'winning', false)



		elseif getProperty('health') < 6.0 then
			objectPlayAnimation('animatedicon1', 'normal', false)
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