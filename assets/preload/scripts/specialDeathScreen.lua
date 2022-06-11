setFlashOnce = true

function onUpdate()
    if inGameOver and setFlashOnce == true then
		makeLuaSprite('charaDeathScreen', 'charaDeathScreen', 0, 0);
		addLuaSprite('charaDeathScreen', true);
		setObjectCamera('charaDeathScreen', 'hud');
		cameraFlash('hud', '0xEC1C24', 1.25, true);
		setFlashOnce = false
	end
	
	addLuaSprite('charaDeathScreen', true);
end

function onGameOverConfirm()
	removeLuaSprite('charaDeathScreen', true);
	cameraFlash('hud', '0xEC1C24', 1.25, true);
end