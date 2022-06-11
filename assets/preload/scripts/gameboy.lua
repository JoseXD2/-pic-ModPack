function onUpdate()

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SHIFT') then
        setProperty('cpuControlled', true)
    end

    if getProperty('boyfriend.curCharacter') == 'bf-camera' then    
        setPropertyFromClass('GameOverSubstate', 'characterName', 'gb-over'); --Character json file for the death animation
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameboy_off'); --put in mods/sounds/
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'GAME-OVER'); --put in mods/music/
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameboy_startup'); --put in mods/music/
    end
    if getProperty('boyfriend.curCharacter') == 'bf-gone' then    
        setPropertyFromClass('GameOverSubstate', 'characterName', 'gb-over'); --Character json file for the death animation
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameboy_off'); --put in mods/sounds/
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'GAME-OVER'); --put in mods/music/
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameboy_startup'); --put in mods/music/
    end


end