
function goodNoteHit(id,d,t,s)


if t == 'CamToMe' and not s then
triggerEvent('CameraControl','810,400',1.8)
end

end
function opponentNoteHit(id,d,t,s)


if t == 'CamToMe' and not s then
triggerEvent('CameraControl','330,300',1.8)
end

end