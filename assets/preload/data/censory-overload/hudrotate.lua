local defaultNotePos = {}
local spin = 10 -- how much it moves before going the other direction
 
function onBeatHit()
    if curBeat >= 64 and curBeat <= 5000 then
        for i = 0, 7 do
            defaultNotePos[i] = {
                getPropertyFromGroup('strumLineNotes', i, 'x'),
                getPropertyFromGroup('strumLineNotes', i, 'y')
            }
        end
    end
end

function onUpdate(elapsed)
    if curBeat >= 64 and curBeat <= 5000 then
        local songPos = getPropertyFromClass('Conductor', 'songPosition') / 200 --How long it will take.
        
        if curStep >= 0 and curStep < 5000 then
            setProperty("camHUD.angle", spin * math.sin(songPos))
        end
        
        if curStep == 5000 then 
            setProperty("camHUD.angle", 0)
        end
    end
end