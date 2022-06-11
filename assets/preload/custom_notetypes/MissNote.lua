function onCreatePost()

	for i=0,getProperty('unspawnNotes.length') do

		
		if getPropertyFromGroup('unspawnNotes',i,'noteType') == 'MissNote' then
			setPropertyFromGroup('unspawnNotes',i,'ignoreNote',true)
			setPropertyFromGroup('unspawnNotes',i,'noAnimation',true)
		end
		
		
	end
end