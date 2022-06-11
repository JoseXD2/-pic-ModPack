function onCreate()
	-- background shit
	makeLuaSprite('stageback5', 'stageback5', -600, -500);
	setScrollFactor('stageback5', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 5.5, 5.5);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -525, -500);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 5.5, 5.5);
		
		makeLuaSprite('stagelight_right', 'stage_light', 5225, -500);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 5.5, 5.5);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -500);
		setScrollFactor('stagecurtains', 5.5, 5.5);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('stageback5', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end