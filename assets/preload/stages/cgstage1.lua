function onCreate()
	-- background shit
	makeAnimatedLuaSprite('CGBG', 'weekcg/CGBG', -900,-860);
	scaleObject('CGBG', 1.25,1.25);
	


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('bopper2', 'weekcg/bopper2', -100, 100);
	scaleObject('bopper2', 1.3,1.3);
	makeAnimatedLuaSprite('bopper1', 'weekcg/bopper1', -300, 100);
	scaleObject('bopper1', 1.3,1.3);

	
        makeLuaSprite('BGLAYER', 'weekcg/BGLAYER', -600,-200);
	scaleObject('BGLAYER', 1.5,2);

	makeLuaSprite('DOWN LIGHT', 'weekcg/DOWN LIGHT', -600,-750);
	scaleObject('DOWN LIGHT', 1.5,2);	
	
	makeLuaSprite('LEFT LIGHT', 'weekcg/LEFT LIGHT', -600,-750);
	scaleObject('LEFT LIGHT', 1.5,2);	

	makeLuaSprite('RIGHT LIGHT', 'weekcg/RIGHT LIGHT', -600,-750);
	scaleObject('RIGHT LIGHT', 1.5,2);	

	makeLuaSprite('UP LIGHT', 'weekcg/UP LIGHT', -600,-750);
	scaleObject('UP LIGHT', 1.5,2);	

	
	end

	addLuaSprite('CGBG', false);
	addAnimationByPrefix('CGBG', 'idle', 'new', 24, true);
	addLuaSprite('bopper2', false);
	addAnimationByPrefix('bopper2', 'idle', 'crowd', 24, true);
	addLuaSprite('bopper1', false);
	addAnimationByPrefix('bopper1', 'idle', 'crowd', 24, true);

	addLuaSprite('BGLAYER', false);
	
	addLuaSprite('DOWN LIGHT', false);
	addLuaSprite('LEFT LIGHT', false);
	addLuaSprite('RIGHT LIGHT', false);
	addLuaSprite('UP LIGHT', false);
	setProperty('DOWN LIGHT.visible', false);
    setProperty('LEFT LIGHT.visible', false);
	setProperty('RIGHT LIGHT.visible', false);
	setProperty('UP LIGHT.visible', false);
end
function onUpdate(elapsed)
	-- start of "update", some variables weren't updated yet
	if keyJustPressed('left') then
	setProperty('DOWN LIGHT.visible', false);
    setProperty('LEFT LIGHT.visible', true);
	setProperty('RIGHT LIGHT.visible', false);
	setProperty('UP LIGHT.visible', false);

	elseif keyJustPressed('down') then
	setProperty('DOWN LIGHT.visible', true);
    setProperty('LEFT LIGHT.visible', false);
	setProperty('RIGHT LIGHT.visible', false);
	setProperty('UP LIGHT.visible', false);

	elseif keyJustPressed('up') then
	setProperty('DOWN LIGHT.visible', false);
    setProperty('LEFT LIGHT.visible', false);
	setProperty('RIGHT LIGHT.visible', false);
	setProperty('UP LIGHT.visible', true);

	elseif keyJustPressed('right') then
	setProperty('DOWN LIGHT.visible', false);
    setProperty('LEFT LIGHT.visible', false);
	setProperty('RIGHT LIGHT.visible', true);
	setProperty('UP LIGHT.visible',false);

	end
end