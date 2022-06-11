function onCreate()
	-- background shit
	makeLuaSprite('stereo-madness', 'stereo-madness', -600, -300);
	setLuaSpriteScrollFactor('stereo-madness', 0.9, 0.9);
	
	makeLuaSprite('stereo-madness2', 'stereo-madness2', -650, 600);
	setLuaSpriteScrollFactor('stereo-madness 2', 0.9, 0.9);
	scaleObject('stereo-madness2', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned on
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stereo-madness3', 'stereo-madness3', -500, -300);
		setLuaSpriteScrollFactor('stereo-madness3', 1.3, 1.3);
		scaleObject('stereo-madness3', 0.9, 0.9);
	end

	addLuaSprite('stereo-madness', false);
	addLuaSprite('stereo-madness2', false);
	addLuaSprite('cubo', false);
	addLuaSprite('cubo', false);
	addLuaSprite('stereo-madness3', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end