-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'stupidflashthinglmao' then
		colour = tonumber(value2);
		duration = tonumber(value1);
		if colour == 4 then
			makeLuaSprite('flash', 'white', 0, 0);
			setObjectCamera('flash', 'other');
                        scaleObject('flash', 4, 4);
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', '0000FF', 0.01, 'sineInOut');
			doTweenAlpha('flashalpha', 'flash', 0, duration, 'sineInOut');
		end
		if colour == 0 then
			makeLuaSprite('flash', 'white', 0, 0);
			setObjectCamera('flash', 'other');
                        scaleObject('flash', 4, 4);
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', '000000', 0.01, 'sineInOut');
			doTweenAlpha('flashalpha', 'flash', 0, duration, 'sineInOut');
		end
		if colour == 1 then
			makeLuaSprite('flash', 'white', 0, 0);
			setObjectCamera('flash', 'other');
                        scaleObject('flash', 4, 4);
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', 'FFFFFF', 0.01, 'sineInOut');
			doTweenAlpha('flashalpha', 'flash', 0, duration, 'sineInOut');
		end
		if colour == 2 then
			makeLuaSprite('flash', 'white', 0, 0);
			setObjectCamera('flash', 'other');
                        scaleObject('flash', 4, 4);
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', 'FF0000', 0.01, 'sineInOut');
			doTweenAlpha('flashalpha', 'flash', 0, duration, 'sineInOut');
		end
		if colour == 3 then
			makeLuaSprite('flash', 'white', 0, 0);
			setObjectCamera('flash', 'other');
                        scaleObject('flash', 4, 4);
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', '00FF00', 0.01, 'sineInOut');
			doTweenAlpha('flashalpha', 'flash', 0, duration, 'sineInOut');
		end
		if colour == 5 then
			makeLuaSprite('flash', 'white', 0, 0);
			setObjectCamera('flash', 'other');
                        scaleObject('flash', 4, 4);
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', 'CEC070', 0.01, 'sineInOut');
			doTweenAlpha('flashalpha', 'flash', 0, duration, 'sineInOut');
		end
		if colour == 6 then
			makeLuaSprite('flash', 'white', 0, 0);
			setObjectCamera('flash', 'other');
                        scaleObject('flash', 4, 4);
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', '0000ffff', 0.01, 'sineInOut');
			doTweenAlpha('flashalpha', 'flash', 0, duration, 'sineInOut');
                end
		if colour == 7 then
			makeLuaSprite('flash', 'white', 0, 0);
			setObjectCamera('flash', 'other');
                        scaleObject('flash', 4, 4);
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', '8300FF', 0.01, 'sineInOut');
			doTweenAlpha('flashalpha', 'flash', 0, duration, 'sineInOut');  
	    end
    end
end