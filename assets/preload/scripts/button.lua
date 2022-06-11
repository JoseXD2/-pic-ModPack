function onCreate()

        makeAnimatedLuaSprite('s', 'spacebutt', 0, 588);
        addAnimationByPrefix('s', 's', 's', 24, false);
	addAnimationByPrefix('s', 'sPress', 'sPressed', 24, false);
	addLuaSprite('s', true);
	setObjectCamera('s', 'other')

end

function onUpdate()
                if (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 132) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) or keyJustPressed('w') then
			objectPlayAnimation('s', 'sPress', false);
end
end