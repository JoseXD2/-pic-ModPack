local xx = 460;
local yy = 550;
local xx2 = 920;
local yy2 = 550;
local ofs = 30;
local angleshit = 1;
local anglevar = 1;
local followchars = true;
function onCreate()
    --spooky
    addCharacterToList('bfYOUGHOST', 'boyfriend')
    addCharacterToList('bfNOTYOUGHOST', 'dad')
	addCharacterToList('bfYOUgf', 'gf')
	-- background shit
	makeLuaSprite('stageback', 'stagebackP', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefrontP', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	--makeAnimatedLuaSprite('body', 'body', -250, 300)
	--addAnimationByPrefix('body', 'bopdy', 'isit?', 1, true)

	--addLuaSprite('body', true)

	makeAnimatedLuaSprite('glitch', 'static', -600, -300);
	scaleObject('glitch', 2, 2);
	addAnimationByPrefix('glitch', 'glitchout', 'static glitch', 24, true);
	objectPlayAnimation('glitch', 'glitchout');
	addLuaSprite('glitch', true); -- false = add behind characters, true = add over characters

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtainsP', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
end

function onStepHit()
    cameraShake('hud', 0.003, 0.2);
end

function opponentNoteHit()
    local luckyRoll = math.random(1, 50)
    local luckyRoll2 = math.random(1, 50)
    
    if mustHitSection == false then
        if (luckyRoll >= 45) then
            cameraShake('hud', 0.08, 0.05);
        end
    end
    if mustHitSection == false then
        if (luckyRoll2 >= 45) then
            cameraShake('game', 0.08, 0.05);
        end
    end
end

--function onUpdate()
--    if followchars == true then
--      if mustHitSection == false then
--            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
--               triggerEvent('Camera Follow Pos',xx-ofs,yy)
            --end
            --if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
              --  triggerEvent('Camera Follow Pos',xx+ofs,yy)
           -- end
           -- if getProperty('dad.animation.curAnim.name') == 'singUP' then
            --    triggerEvent('Camera Follow Pos',xx,yy-ofs)
          --  end
        --    if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
      --          triggerEvent('Camera Follow Pos',xx,yy+ofs)
    --        end
  --          if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
 --               triggerEvent('Camera Follow Pos',xx-ofs,yy)
--            end
--            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
--                triggerEvent('Camera Follow Pos',xx+ofs,yy)
--            end
--            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
--                triggerEvent('Camera Follow Pos',xx,yy-ofs)
--            end
--           if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
--                triggerEvent('Camera Follow Pos',xx,yy+ofs)
--            end
--            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
--                triggerEvent('Camera Follow Pos',xx,yy)
--            end
--            if getProperty('dad.animation.curAnim.name') == 'idle' then
--                triggerEvent('Camera Follow Pos',xx,yy)
--            end
--        else
--            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
--                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
--           end
--            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
--                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
--            end
--            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
--                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
--            end
--            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
--                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
--            end
--            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
--                    triggerEvent('Camera Follow Pos',xx2,yy2)
--            end
--        end
--    else
--        triggerEvent('Camera Follow Pos','','')
--    end
--end