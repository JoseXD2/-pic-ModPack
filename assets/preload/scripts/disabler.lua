function onCreate()
    setPropertyFromClass('ClientPrefs', 'noReset', true)
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
    if dadName == "neomonster" then
		cameraShake('game', 0.0095, 0.1)
	end
end