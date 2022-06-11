local allowCountdown = false
function onStartCountdown()
  if not allowCountdown and not seenCutscene then
    startDialogue('dialogue')
    allowCountdown = true
    return Function_Stop;
  end
  return Function_Continue;
  end