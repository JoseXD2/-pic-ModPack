	-- Port By Lechan (Jos), Bubcraft19, Enginer Gaming

function onCreate()
    makeLuaSprite('three', 'ready', 260, 60);
    setScrollFactor('three', 0, 0);
	setProperty('three.alpha', 0.5)
	setProperty('three.visible', false)
	addLuaSprite('three', true);

    makeLuaSprite('two', 'set', 260, 60);
    setScrollFactor('two', 0, 0);
	setProperty('two.alpha', 0.5)
	setProperty('two.visible', false)
	addLuaSprite('two', true);

    makeLuaSprite('one', 'one', 260, 60);
    setScrollFactor('one', 0, 0);
	setProperty('one.alpha', 0.5)
	setProperty('one.visible', false)
	addLuaSprite('one', true);

    makeLuaSprite('gofun', 'go', 260, 60);
    setScrollFactor('gofun', 0, 0);
	setProperty('gofun.alpha', 0.5)
	setProperty('gofun.visible', false)
	addLuaSprite('gofun', true);
	
	makeLuaSprite('three2', 'ready2', 260, 60);
    setScrollFactor('three2', 0, 0);
	setProperty('three2.alpha', 0.5)
	setProperty('three2.visible', false)
	addLuaSprite('three2', true);

    makeLuaSprite('two2', 'set2', 260, 60);
    setScrollFactor('two2', 0, 0);
	setProperty('two2.alpha', 0.5)
	setProperty('two2.visible', false)
	addLuaSprite('two2', true);

    makeLuaSprite('one2', 'one2', 260, 60);
    setScrollFactor('one2', 0, 0);
	setProperty('one2.alpha', 0.5)
	setProperty('one2.visible', false)
	addLuaSprite('one2', true);

    makeLuaSprite('gofun2', 'go2', 260, 60);
    setScrollFactor('gofun2', 0, 0);
	setProperty('gofun2.alpha', 0.5)
	setProperty('gofun2.visible', false)
	addLuaSprite('gofun2', true);

function onStepHit()
    if curStep == 112 then
		setProperty('three.visible', true)
		doTweenAlpha('threeAlpha', 'three', 0, 0.25, 'cubeOut');
end

    if curStep == 115 then
		setProperty('two.visible', true)
		doTweenAlpha('twoAlpha', 'two', 0, 0.25, 'cubeOut');
end

    if curStep == 120 then
		setProperty('gofun.visible', true)
		doTweenAlpha('gofunAlpha', 'gofun', 0, 0.25, 'cubeOut');
end

	if curStep == 1152 then
		triggerEvent('Camera Follow Pos', '690', '820')
        doTweenZoom('bruh', 'camGame', 1.2, 0.7, 'cubeInOut')
		setProperty('three2.visible', true)
		doTweenAlpha('threeAlpha', 'three2', 0, 0.25, 'cubeOut');
end

	if curStep == 1155 then
        doTweenZoom('bruh', 'camGame', 1.5, 0.7, 'cubeInOut')
		setProperty('two2.visible', true)
		doTweenAlpha('twoAlpha', 'two2', 0, 0.25, 'cubeOut');
end

	if curStep == 1165 then
		triggerEvent('Camera Follow Pos', '', '')
        doTweenZoom('bruh', 'camGame', 0.9, 0.7, 'cubeInOut')
		setProperty('gofun2.visible', true)
		doTweenAlpha('gofunAlpha', 'gofun2', 0, 0.25, 'cubeOut');
  end
 end
end