local anims = {'LEFT', 'DOWN', 'UP', 'RIGHT'}
local cloud = false
local gf = false

function onStartCountdown()
    setProperty('dad.alpha', 0)
    return Function_Continue;
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Alt Animation' then
        cloud = true
        gf = false
    else
        cloud = false
        gf = true
    end
end

function onBeatHit()
    if cloud == true then
       characterPlayAnim('gf', 'lookCloud', true)
    elseif gf == true then
        characterPlayAnim('gf', 'lookGF', true)
    end
end

function onUpdate(elapsed)
    for i = 0,3 do
        setPropertyFromGroup('strumLineNotes', i, 'x', -1000)
    end
end