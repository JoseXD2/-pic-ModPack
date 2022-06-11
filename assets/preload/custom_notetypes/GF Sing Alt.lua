function onCreate()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'GF Sing Alt' then
            if difficulty == 2 then
                setPropertyFromGroup('unspawnNotes', i, 'texture', 'pNotes2'); --Change texture          
                else
                setPropertyFromGroup('unspawnNotes', i, 'texture', 'pNotes2i'); --Change texture  
                end    
            setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); --Stops original animations

            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
                --setPropertyFromGroup('unspawnNotes', i, 'hitByOpponent', true); --Miss has no penalties
                setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
            end
        end
    end
end

function onUpdatePost(elapsed)
	setProperty('gf.specialAnim',true)
    --if botPlayOn == false then
    --if difficulty == 2 then
        elapsedd = 0.016/elapsed
        for i=0, getProperty('notes.length') do

            if getSongPosition() > getPropertyFromGroup('notes',i,'strumTime') and getPropertyFromGroup('notes',i,'noteType') == 'GF Sing Alt' then --or getSongPosition() > getPropertyFromGroup('notes',i,'strumTime') and getPropertyFromGroup('notes',i,'noteType') == 'GF Sing Alt' then

               
                noteData = getPropertyFromGroup('notes',i,'noteData')
                                    if noteData == 0 then
                                            --characterPlayAnim('gf', 'singLEFT' .. altP, true);
                                            
                                                anim = 'singLEFT-alt'
                                            
                                        
                                    elseif noteData == 1 then
                                            
                                                anim = 'singDOWN-alt'
                                            
                                            --characterPlayAnim('gf', 'singDOWN' .. altP, true);
                                    elseif noteData == 2 then
                                            
                                                anim = 'singUP-alt'
                                            
                                            --characterPlayAnim('gf', 'singUP' .. altP, true);
                                    elseif noteData == 3 then
                                            
                                                anim = 'singRIGHT-alt'
                                            
                                            --characterPlayAnim('gf', 'singRIGHT' .. altP, true);
                                    end
                                    
                                    --triggerEvent('Play Animation', anim, 'gf'); 
                                    characterPlayAnim('gf', anim, true);
                                    --runTimer('gotoidle',0.001*stepCrochet*6)
                                --if not difficulty == 2 then
                                removeFromGroup('notes', i);
                                --end

                                
            end

    
        end
end
--commenting out every shitt dwdw it's all dealt with in the Pinkie Sing Lua

--[[
function onUpdate()
    if botPlayOn == false then
        setProperty('cpuControlled',false)
    

        for i=0, getProperty('notes.length') do
    
            if getSongPosition() > getPropertyFromGroup('notes',i,'strumTime') and getPropertyFromGroup('notes',i,'noteType') == 'GF Sing Alt' then
    
            setProperty('cpuControlled',true)
            end
    
        end
    
    end
end

]]--

if difficulty == 2 then
function opponentNoteHit(id, direction, noteType, isSustainNote)
        if noteType == 'GF Sing Alt' then
            anim = ''
            if direction == 0 then
                anim = 'singLEFT-alt'
            elseif direction == 1 then
                anim = 'singDOWN-alt'
            elseif direction == 2 then
                anim = 'singUP-alt'
            elseif direction == 3 then
                anim = 'singRIGHT-alt'
            end
            --characterPlayAnim('gf', anim, true);
            triggerEvent('Play Animation', anim, 'gf');
        end
    end

    function goodNoteHit(id, direction, noteType, isSustainNote)
        if noteType == 'GF Sing Alt' then
            anim = ''
            if direction == 0 then
                anim = 'singLEFT-alt'
            elseif direction == 1 then
                anim = 'singDOWN-alt'
            elseif direction == 2 then
                anim = 'singUP-alt'
            elseif direction == 3 then
                anim = 'singRIGHT-alt'
            end
            --characterPlayAnim('gf', anim, true);
            triggerEvent('Play Animation', anim, 'gf');
        end
    end
end
