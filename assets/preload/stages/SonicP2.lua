function onCreate()
	-- background shit
	makeAnimatedLuaSprite('bg1', 'SonicP2/bg1', -1000, -730)
	setLuaSpriteScrollFactor('bg1', 0.9, 0.9);
	scaleObject('bg1', 8, 8)

	makeAnimatedLuaSprite('bg2', 'SonicP2/bg2', -1000, -730)
	setLuaSpriteScrollFactor('bg2', 0.7, 0.7);
	scaleObject('bg2', 8, 8)

	makeLuaSprite('bg3', 'SonicP2/bg3', -1000, -730)
	setLuaSpriteScrollFactor('bg3', 0.5, 0.5);
	scaleObject('bg3', 8, 8)

	makeAnimatedLuaSprite('objects', 'SonicP2/objects', -1000, -750)
	setLuaSpriteScrollFactor('objects', 0.9, 0.9);
	scaleObject('objects', 8, 8);
	
	makeLuaSprite('GHGround', 'SonicP2/GHGround', -1000, -750)
	setLuaSpriteScrollFactor('GHGround', 0.9, 0.9);
	scaleObject('GHGround', 8, 8)

	makeAnimatedLuaSprite('flowers', 'SonicP2/flowers', -1000, -750)
	setLuaSpriteScrollFactor('flowers', 0.9, 0.9);
	scaleObject('flowers', 8, 8);
	
	makeAnimatedLuaSprite('NewTitleMenuBG', 'SonicP2/NewTitleMenuBG', -450, -270);
	setLuaSpriteScrollFactor('NewTitleMenuBG', 1.2, 1.2);
	scaleObject('NewTitleMenuBG', 5.9, 5.9);
	
	makeLuaSprite('backtrees', 'SonicP2/backtrees', -440, -210);
	setLuaSpriteScrollFactor('backtrees', 1, 1);
	scaleObject('backtrees', 1.0, 1.0);

	makeLuaSprite('Trees', 'SonicP2/Trees', -510, -270);
	setLuaSpriteScrollFactor('Trees', 1, 1);
	scaleObject('Trees', 1.2, 1.2);

	makeLuaSprite('ground', 'SonicP2/ground', -625, -160);
	setLuaSpriteScrollFactor('ground', 1.0, 1);
	scaleObject('ground', 1.1, 1.1);
	setProperty('bg1.antialiasing', false);
	setProperty('bg2.antialiasing', false);
	setProperty('bg3.antialiasing', false);
	setProperty('objects.antialiasing', false);
	setProperty('GHGround.antialiasing', false);
	setProperty('flowers.antialiasing', false);
	
	
	addLuaSprite('bg1', false)
	addAnimationByPrefix('bg1', 'idle', 'bg1', 24, true);
	addLuaSprite('bg2', false)
	addAnimationByPrefix('bg2', 'idle', 'bg2', 24, true);
	addLuaSprite('bg3', false)
	addLuaSprite('objects', false)
	addLuaSprite('GHGround', false)
	addLuaSprite('flowers', false)
	addAnimationByPrefix('flowers', 'idle', 'flowerloop', 24, true);
	addLuaSprite('NewTitleMenuBG', false);
	addAnimationByPrefix('NewTitleMenuBG', 'idle', 'TitleMenuSSBG instance ', 24, true);
	setProperty('NewTitleMenuBG.visible', true);
	addLuaSprite('backtrees', false);
	addLuaSprite('Trees', false);
	addLuaSprite('ground', false);

end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('bg1.visible', true);
			setProperty('bg2.visible', true);
			setProperty('bg3.visible',true);
			setProperty('objects.visible', true);
			setProperty('GHGround.visible', true);
			setProperty('flowers.visible', true);
			setProperty('NewTitleMenuBG.visible', false);
			setProperty('backtrees.visible', false);
			setProperty('Trees.visible', false);
			setProperty('ground.visible', false);
		
		end
		
		if value1 == '1' then
			setProperty('NewTitleMenuBG.visible', true);
			setProperty('backtrees.visible', true);
			setProperty('Trees.visible', true);
			setProperty('ground.visible', true);
			setProperty('bg1.visible', false);
			setProperty('bg2.visible', false);
			setProperty('bg3.visible', false);
			setProperty('objects.visible', false);
			setProperty('GHGround.visible', false);
			setProperty('flowers.visible', false);
		end
	end
end