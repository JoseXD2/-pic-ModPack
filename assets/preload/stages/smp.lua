function onCreate()
	-- background shit
	makeLuaSprite('stageback4', 'stageback4', -600, -400);
	setScrollFactor('stageback4', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 4.4, 4.4);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -425, -400);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 4.4, 4.4);
		
		makeLuaSprite('stagelight_right', 'stage_light', 4225, -400);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 4.4, 4.4);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -400);
		setScrollFactor('stagecurtains', 4.4, 4.4);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('stageback4', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end