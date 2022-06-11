function onCreate()
	-- background shit
	makeLuaSprite('stageback3', 'stageback3', -600, -300);
	setScrollFactor('stageback3', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 3.3, 3.3);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -325, -300);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 3.3, 3.3);
		
		makeLuaSprite('stagelight_right', 'stage_light', 3225, -300);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 3.3, 3.3);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 3.3, 3.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('stageback3', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end