function onUpdatePost()
    if ratingName == 'Perfect!!' then
        setRatingName('Super')
		
	elseif ratingName == 'Sick!' then
		setRatingName('Excelent')

	elseif ratingName == 'Great' then
		setRatingName('Awesome')

	elseif ratingName == 'Good' then
		setRatingName('Cool')
		
	elseif ratingName == 'Meh' then
		setRatingName('Meh')

	elseif ratingName == 'Bruh' then
		setRatingName('Bruh')

	elseif ratingName == 'Bad' then
		setRatingName('Oh No')

	elseif ratingName == 'Shit' then
		setRatingName('What?')

	elseif ratingName == 'You Suck!' then
		setRatingName('Try again')

	elseif ratingName == '?' then
		setRatingName('Eh?')		
   end		


    setTextFont('botplayTxt', 'vcr.ttf');
    setTextColor('botplayTxt', 'A6A3FF')    
    setTextString('botplayTxt', "What");
setProperty('scoreTxt.alpha', 0.6);
for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums',i,'alpha',0.8)
end

  end

function onBeatHit()

    setProperty('healthBar.alpha', 0.3)
    setProperty('healthBarBG.alpha', 0.3)
    setProperty('iconP2.alpha', 0.7)
    setProperty('iconP1.alpha', 0.7)
end