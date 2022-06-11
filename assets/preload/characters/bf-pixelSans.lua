
function onCreatePost()
	if dadName == 'bf-pixelSans' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'FakeHurt')
    setPropertyFromGroup('strumLineNotes', i, 'scale.x', 0.6)
	setPropertyFromGroup('strumLineNotes', i, 'scale.y', 0.6)
	end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'FakeHurt'); --Change texture
			end

		end
	end
end

function opponentNoteHit()
        health = getProperty('health')
    if getProperty('health') > 0.3 then
       setProperty('health', health- 0.015);
   end
end