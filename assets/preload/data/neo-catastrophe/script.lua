function onCreate()
    makeAnimatedLuaSprite('PICOOO', 'character/Pico', -600,0)addAnimationByPrefix('PICOOO', 'dance', 'Pico Idle Dance',24, true)
    objectPlayAnimation('PICOOO', 'dance', false)
    setScrollFactor('PICOOO', 0.9, 0.9);

    addLuaSprite('PICOOO', false);

    setProperty('gf.visible', false);
    setProperty('PICOOO.visible',false);
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.01)
    end
end