-- Method Simple: Add anims and use danceDir

function onCreatePost()
	makeAnimatedLuaSprite('gf2', 'characters/GF_assets', 1270, 100)
	addAnimationByIndices('gf2', 'danceLeft', 'GF Dancing Beat', '30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14', 24)
	addAnimationByIndices('gf2', 'danceRight', 'GF Dancing Beat', '15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29', 24)
	addLuaSprite('gf2')
	setScrollFactor('gf2', 0.7, 0.9);
    scaleObject('gf2', 0.7, 0.7);
  end
  
  local danceDir = false
  function onBeatHit()
	if danceDir then
	objectPlayAnimation('gf2', 'danceLeft', true)
	danceDir = false
	else
	objectPlayAnimation('gf2', 'danceRight', true)
	danceDir = true
	end
  end

  function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if danceDir then
		objectPlayAnimation('gf2', 'danceLeft', true)
		danceDir = false
		else
		objectPlayAnimation('gf2', 'danceRight', true)
		danceDir = true
		end
end

