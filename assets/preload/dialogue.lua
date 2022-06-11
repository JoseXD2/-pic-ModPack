local allowCountdown = false

function onCreate()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
--	if not allowCountdown and isStoryMode then-- and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.1);
		allowCountdown = true;
--		return Function_Stop;
--	end
--	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
	--d	triggerEvent('startDia')
		e = ''
		if getProperty('endingSong') then e = 'End' end
		startDialogue('dialogue'.. e, 'POS');
	end
end
-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end
