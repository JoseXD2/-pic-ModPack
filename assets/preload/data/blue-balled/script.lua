local keepScroll = false

function onCreate()
    addCharacterToList('bf@NOTYOU', 'dad')
    addCharacterToList('bf@NOTYOU', 'dad')
    addCharacterToList('bf', 'gf')
    addCharacterToList('bf', 'boyfriend')
    precacheImage('balls_overlay')
    -- prolly no need for this many note splashes
    -- I could probably just use one, but I don't feel like it right now
    precacheImage('noteSplashesRIGHT')
    precacheImage('noteSplashesLEFT')
    precacheImage('noteSplashesDOWN')
    precacheImage('noteSplashesUP')
    precacheSound('HA_HA')
    triggerEvent('Camera Follow Pos', 625, 600)
    triggerEvent('Change Character', '2', 'bfYOUgf')
    setProperty('gf.alpha', tonumber(0))
    setProperty('dad.alpha', tonumber(0))
    setProperty('health', 2)
end


function onCreatePost()
    --if getProperty('practiceMode') == true then
      --  debugPrint("Cringe")
    --end
    if difficulty == 2 then
	    debugPrint("5 Misses. That's the limit. Don't mess up.")
    end
    if difficulty == 1 then 
        debugPrint("2 Misses. That's the limit. Don't mess up.")
    end
    if difficulty == 0 then
        debugPrint("5 Misses. That's the --", " Actually, no point. You lost anyways.")
    end
end


function goodNoteHit()
    if curBeat <= 223 then
        setProperty('health', getProperty('health')+ 0.0112)
    end
    if curBeat >= 224 then
        setProperty('health', getProperty('health')+ 0.0689)
    end
end


function opponentNoteHit(id, direction)
    if mustHitSection == false then
        health = getProperty('health')
        if getProperty('health') > 0.04 and curBeat <= 223 then
            setProperty('health', health- 0.0312)
        end
        if getProperty('health') > 0.06 and curBeat >= 224 then
            setProperty('health', health- 0.0824)
        end
        -- notesplash thing is tied to glitch notes for now until I figure out
        -- how to inplement it here
    end
end


function onUpdate()
    --local var undo = false

    -- eww middlescroll change it back please
    if curStep >= 128 then
        if keyJustPressed("space") then
            noteTweenX("UMx5", 4, 740, 1, "quartInOut");
            noteTweenX("UMx6", 5, 852, 1, "quartInOut");
            noteTweenX("UMx7", 6, 963, 1, "quartInOut");
            noteTweenX("UMx8", 7, 1075, 1, "quartInOut"); 
            noteTweenX("UOMx0", 0, 92, 1, "quartInOut");
            noteTweenX("UOMx1", 1, 203, 1, "quartInOut");
            noteTweenX("UOMx2", 2, 314, 1, "quartInOut");
            noteTweenX("UOMx3", 3, 425, 1, "quartInOut");
        end 
    end

    --healthDrain = true
    --hmm = math.random(0.05, 1.9)
    --if curBeat % 2 == 0 then
      --  setProperty('health', getProperty('health')+ hmm) 
    --elseif curBeat % 2 == 1 then
     --   setProperty('health', getProperty('health')- hmm)
    --elseif getProperty('health') < 0 then
     --   heathDrain = false
       -- setProperty('health', getProperty('health')+ 0.05)
    --end
    --  test stuff
    --if keyJustPressed('space') then
      --  addMisses(5)
    --end
   -- if keyPressed('space') then
     --   setProperty('health', 0.2)
    --end

    -- haha stuff
    hahad = false
    if inGameOver then
        playSound('HA_HA')
        close(true)
    end
    -- i'll figure this stuff out eventually
    --if getProperty('songMisses') > 5 and difficulty == 2 and hahad == false then
    --    playSound('HA_HA', 'lol')
    --    hahad = true
    --end
    --if getProperty('songMisses') > 2 and difficulty == 1 and hahad == false then
    --    playSound('HA_HA', 'lol')
    --    hahad = true
    --end
    --if difficulty == 0 and hahad == false then
    --    playSound('HA_HA', 'lol')
    --    hahad = true
    --end

    -- icon fading shit
    if curBeat % 2 == 1 and getProperty('health') <= 1.7 and curBeat <= 329 then 
        doTweenAlpha('areYouFading?Tween', 'iconP1', 0.6, 0.3, 'linear')

    elseif curBeat % 2 == 0 and getProperty('health') <= 1.7 and curBeat <= 329 then
        doTweenAlpha('areYouNotFading?Tween', 'iconP1', 0.9, 0.3, 'linear')

    elseif curBeat % 2 == 1 and getProperty('health') <= 0.29 and curBeat <= 329 then
        doTweenAlpha('ohShitTween', 'iconP1', 0.1, 0.1, 'linear')

    elseif curBeat % 2 == 0 and getProperty('health') <= 0.29 and curBeat <= 329 then
        doTweenAlpha('ohShitFuckTween', 'iconP1', 0.4, 0.1, 'linear')

    elseif curBeat % 2 == 1 and getProperty('health') >= 1.8 and curBeat <= 329 then
        doTweenAlpha('nahWeGooTween', 'iconP1', 0.8, 0.3, 'linear')

    elseif curBeat % 2 == 0 and getProperty('health') >= 1.8 and curBeat <= 329 then
        doTweenAlpha('nahWeGoo2Tween', 'iconP1', 1, 0.3, 'linear')

    elseif curBeat == 329 then
        doTweenAlpha('nahOkTween', 'iconP1', 1, 0.2, 'linear')

    end
        --elseif curBeat == 329 then
        --close()


    
    if curStep == 896 and difficulty == 2 then
        triggerEvent('Change Scroll Speed', '1.2', '0')
    end
    if curStep == 896 and difficulty == 1 then
        triggerEvent('Change Scroll Speed', '1.1', '0')
    end
    if curStep == 896 and difficulty == 0 then
        triggerEvent('Change Scroll Speed', '1', '0')
    end

end


function onBeatHit()

    if curBeat == 31 then
        characterPlayAnim('boyfriend', 'hurt')
        setProperty('health', 1)
        --triggerEvent('Change Character', 'bYOUGHOST')
    end

    if curBeat == 329 and getProperty('songMisses') <= 2 then
        --triggerEvent('Alt Idle Animation', '0', '-alt')
    end

    if curBeat == 160 then 
    --    triggerEvent('Change Character', '0', 'bfYOUGHOST')
    --    triggerEvent('Change Character', '1', 'bf@NOTYOU')
    --    setProperty('boyfriend.alpha', tonumber(0.5))
    --    setProperty('dad.alpha', tonumber(1))
    end

end


-- long function time
function onStepHit()
    if curStep == 1 then
        --noteTweenAlpha('noteFade1Tween', 0, 1, 0.1, 'linear')
        --noteTweenAlpha('noteFade2Tween', 1, 1, 0.1, 'linear')
        --noteTweenAlpha('noteFade3Tween', 2, 1, 0.1, 'linear')
        --noteTweenAlpha('noteFade4Tween', 3, 1, 0.1, 'linear')
        if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
            -- middle scroll on
            noteTweenX("Mdx5", 0, 410, 16, "quartInOut");
            noteTweenAngle("Mdr5", 0, 360, 16, "quartInOut");
            noteTweenAlpha("Mdo5", 0, 0.5, 0.4,"quartInOut");
            noteTweenX("Mdx6", 1, 522, 16, "quartInOut");
            noteTweenAngle("Mdr6", 1, 360, 16, "quartInOut");
            noteTweenAlpha("Mdo6", 1, 0.5, 0.4, "quartInOut");
            noteTweenX("Mdx7", 2, 633, 16, "quartInOut");
            noteTweenAngle("Mdr7", 2, -360, 16, "quartInOut");
            noteTweenAlpha("Mdo7", 2, 0.5, 0.4, "quartInOut");
            noteTweenX("Mdx8", 3, 745, 16, "quartInOut");
            noteTweenAngle("Mdr8", 3, -360, 16, "quartInOut");
            noteTweenAlpha("Mdo8", 3, 0.5, 0.4, "quartInOut");
        end
        if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
                    -- your? note 1
            noteTweenX("x5", 0, 410, 16, "quartInOut");
            noteTweenAngle("r5", 0, 360, 16, "quartInOut");
            noteTweenAlpha("o5", 0, 0.5, 0.4,"quartInOut");
                    -- your? note 2
            noteTweenX("x6", 1, 522, 16, "quartInOut");
            noteTweenAngle("r6", 1, 360, 16, "quartInOut");
            noteTweenAlpha("o6", 1, 0.5, 0.4, "quartInOut");
                    -- your? note 3
            noteTweenX("x7", 2, 633, 16, "quartInOut");
            noteTweenAngle("r7", 2, 360, 16, "quartInOut");
            noteTweenAlpha("o7", 2, 0.5, 0.4, "quartInOut");
                    -- your? note 4
            noteTweenX("x8", 3, 745, 16, "quartInOut");
            noteTweenAngle("r8", 3, 360, 16, "quartInOut");
            noteTweenAlpha("o8", 3, 0.5, 0.4, "quartInOut");
                    -- !your note 1
            noteTweenX("Mx5", 4, 410, 16, "quartInOut");
            noteTweenAngle("Mr5", 4, 360, 16, "quartInOut");
            noteTweenAlpha("Mo5", 4, 1, 16,"quartInOut");
                    -- !your note 2
            noteTweenX("Mx6", 5, 522, 16, "quartInOut");
            noteTweenAngle("Mr6", 5, 360, 16, "quartInOut");
            noteTweenAlpha("Mo6", 5, 1, 16, "quartInOut");
                    -- !your note 3
            noteTweenX("Mx7", 6, 633, 16, "quartInOut");
            noteTweenAngle("Mr7", 6, 360, 16, "quartInOut");
            noteTweenAlpha("Mo7", 6, 1, 16, "quartInOut");
                    -- !your note 4
            noteTweenX("Mx8", 7, 745, 16, "quartInOut");
            noteTweenAngle("Mr8", 7, 360, 16, "quartInOut");
            noteTweenAlpha("Mo8", 7, 1, 16, "quartInOut");
        end
    end
    if curStep == 128 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 160 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 192 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 224 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 256 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 320 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end

    -- duel section a step after here
    if curStep == 383 then
        makeLuaSprite('ballOver', 'balls_overlay', -15, 200)
        addLuaSprite('ballOver', true)
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        setProperty('gf.alpha', tonumber(1))
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
    --    setProperty('boyfriend.alpha', tonumber(0.5))
    --    setProperty('dad.alpha', tonumber(0.5))
    --    setProperty('gf.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep >= 383 and curStep <= 639 and mustHitSection == false then
        setProperty('health', 0.15)
    end
    if curStep == 384 then
        setProperty('boyfriend.alpha', tonumber(0.6))
        setProperty('dad.alpha', tonumber(0.6))
    end
    if curStep == 638 then
        --triggerEvent('Blammed Lights', '0')
    end
    -- duel section ends here

    if curStep == 640 then
        removeLuaSprite('ballOver', true)
        setProperty('health', 1)
       -- triggerEvent('Camera Follow Pos', 625, 600)
        setProperty('gf.alpha', tonumber(0))
        triggerEvent('Alt Idle Animation', '2', '-alt')
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 641 then
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
    end
    if curStep == 704 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 768 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 832 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 896 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 928 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 960 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 992 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 1024 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 1088 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 1152 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 1216 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 1280 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end

    -- Hard Victory anim
    if curStep == 1304 and getProperty('songMisses') <= 5 and difficulty == 2 then
        -- ooh
        characterPlayAnim('boyfriend', 'singRIGHT', true)
    end
    if curStep == 1306 and getProperty('songMisses') <= 5 and difficulty == 2 then
        -- yeah
        characterPlayAnim('boyfriend', 'singUP', true)
    end
    if curStep == 1308 and getProperty('songMisses') <= 5 and difficulty == 2 then
        -- ha
        characterPlayAnim('boyfriend', 'pre-attack', true)
    end
    if curStep == 1310 and getProperty('songMisses') <= 5 and difficulty == 2 then
        -- ha!
        characterPlayAnim('boyfriend', 'attack', true)
    elseif curStep == 1304 and getProperty('songMisses') > 5 and difficulty == 2 then
        -- ooh
        characterPlayAnim('boyfriend', 'singRIGHTmiss', true)
    end
    if curStep == 1306 and getProperty('songMisses') > 5 and difficulty == 2 then
        -- nah
        characterPlayAnim('boyfriend', 'singUPmiss', true)
    end
    if curStep == 1308 and getProperty('songMisses') > 5 and difficulty == 2 then
        -- uh
        characterPlayAnim('boyfriend', 'singLEFTmiss', true)
    end
    if curStep == 1310 and getProperty('songMisses') > 5 and difficulty == 2 then
        -- oh
        characterPlayAnim('boyfriend', 'singDOWNmiss', true)
    end

    if curStep == 1304 and getProperty('songMisses') <= 2 and difficulty == 1 then
        -- ooh
        characterPlayAnim('boyfriend', 'singRIGHT', true)
    end
    if curStep == 1306 and getProperty('songMisses') <= 2 and difficulty == 1 then
        -- yeah
        characterPlayAnim('boyfriend', 'singUP', true)
    end
    if curStep == 1308 and getProperty('songMisses') <= 2 and difficulty == 1 then
        -- ha
        characterPlayAnim('boyfriend', 'pre-attack', true)
    end
    if curStep == 1310 and getProperty('songMisses') <= 2 and difficulty == 1 then
        -- ha!
        characterPlayAnim('boyfriend', 'attack', true)
    end

    if curStep == 1313 then
        -- Ending stuff (Hard and easy)
        if getProperty('songMisses') <= 5 and difficulty == 2 then
            triggerEvent('Change Character', '0', 'bf')
            triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
            setProperty('boyfriend.alpha', tonumber(1))
            doTweenAlpha('youWon', 'dad', 0, 0.9, 'linear')
            cameraFlash('game', '0xFFFFFF', 0.5, true)
            --triggerEvent('Alt Idle Animation', '0', '-alt')
            characterPlayAnim('boyfriend', 'hey', true)
            setProperty('health', 2)
        elseif getProperty('songMisses') > 5 or difficulty == 0 then
            setProperty('health', 0.01)
            playSound('fnf_loss_sfx')
            characterPlayAnim('boyfriend', 'hurt', true)
            doTweenAlpha('boyfriendlostTween', 'boyfriend', 0, 0.5, 'linear')
        end
        -- Ending stuff (Normal)
        if getProperty('songMisses') <= 2 and difficulty == 1 then
            triggerEvent('Change Character', '0', 'bf')
            triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
            setProperty('boyfriend.alpha', tonumber(1))
            doTweenAlpha('youWon', 'dad', 0, 0.9, 'linear')
            cameraFlash('game', '0xFFFFFF', 0.5, true)
            --triggerEvent('Alt Idle Animation', '0', '-alt')
            characterPlayAnim('boyfriend', 'hey', true)
            setProperty('health', 2)
        elseif getProperty('songMisses') > 2 and difficulty == 1 then
            setProperty('health', 0.01)
            playSound('fnf_loss_sfx')
            characterPlayAnim('boyfriend', 'hurt', true)
            doTweenAlpha('boyfriendlostTween', 'boyfriend', 0, 0.5, 'linear')
        end
    end
    if curStep == 1319 and getProperty('songMisses') > 5 or difficulty == 0 then
        characterPlayAnim('dad', 'singRIGHT', true)
    end
    if curStep == 1319 and getProperty('songMisses') > 2 and difficulty == 1 then
        characterPlayAnim('dad', 'singRIGHT', true)
    end
end