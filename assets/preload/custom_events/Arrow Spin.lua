function onEvent(n,v1,v2)
	if n == "Arrow Spin" then
		runTimer('tweenstop',0.20);
		-- bf notespin
		noteTweenAngle('A',4 , 360 , 0.15, "circInOut")
		noteTweenAngle('B',5 , 360 , 0.15, "circInOut")
		noteTweenAngle('C',6 , 360 , 0.15, "circInOut")
		noteTweenAngle('D',7 , 360 , 0.15, "circInOut")

		-- oppt notespin
		noteTweenAngle('E',0 , 360 , 0.15, "circInOut")
		noteTweenAngle('F',1 , 360 , 0.15, "circInOut")
		noteTweenAngle('G',2 , 360 , 0.15, "circInOut")
		noteTweenAngle('H',3 , 360 , 0.15, "circInOut")
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'tweenstop' then
		noteTweenAngle('A',4 , 0 , 0.000000001, linear)
		noteTweenAngle('B',5 , 0 , 0.000000001, linear)
		noteTweenAngle('C',6 , 0 , 0.000000001, linear)
		noteTweenAngle('D',7 , 0 , 0.000000001, linear)

		-- oppt notespin
		noteTweenAngle('E',0 , 0 , 0.000000001, linear)
		noteTweenAngle('F',1 , 0 , 0.000000001, linear)
		noteTweenAngle('G',2 , 0 , 0.000000001, linear)
		noteTweenAngle('H',3 , 0 , 0.000000001, linear)
    end
end
