function onCreate()
	makeLuaSprite('c', 'effects/careFreeEffect', 0, 0);
        scaleObject('c', 2, 2);
	addLuaSprite('c', false);
	setObjectCamera('c', 'camHUD');
end