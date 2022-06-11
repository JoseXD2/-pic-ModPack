
function goodNoteHit(id,d,t,s)


if t == 'CamToMe2' and not s then
triggerEvent('CameraControl','810,400',getProperty('camGame.zoom'))
end

end
function opponentNoteHit(id,d,t,s)


if t == 'CamToMe2' and not s then
triggerEvent('CameraControl','330,300',getProperty('camGame.zoom'))
end

end