function onCreate()
	-- background shit
	makeLuaSprite('stageback6', 'stageback6', -600, -600);
	setScrollFactor('stageback6', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefront', -660, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 6.6, 6.6);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -626, -600);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 6.6, 6.6);
		
		makeLuaSprite('stagelight_right', 'stage_light', 6226, -600);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 6.6, 6.6);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -600, -600);
		setScrollFactor('stagecurtains', 6.6, 6.6);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('stageback6', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end