local xx = 725;
local yy = 420;
local xx2 = 725;
local yy2 = 420;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	--background boi
	makeAnimatedLuaSprite('stage', 'sans-dem/Nightmare Sans Stage', -600, -300)
	addAnimationByPrefix('stage', 'idle', 'Normal instance 1', 24, true);
	addLuaSprite('stage', false)

	makeAnimatedLuaSprite( 'stage2', 'sans-dem/Nightmare Sans Stage', -600, -300)
	addAnimationByPrefix('stage2', 'idle', 'sdfs instance 1', 24, true);
	addLuaSprite('stage2', false)
	scaleObject('NightmareStage', 1.3, 1.2);

	setProperty('stage2.visible', false)

end


function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('stage.visible', false);
			setProperty('stage2.visible', true);
		end
		
		if value1 == '1' then
			setProperty('stage.visible', true);
			setProperty('stage2.visible', false);
		end


	end

end