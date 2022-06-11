

function goodNoteHit(id,d,t,s)


if t == 'Alt' then
anims = {'LEFT','DOWN','UP','RIGHT'}
characterPlayAnim('','sing'..anims[d+1]..getProperty('boyfriend.idleSuffix'),true)
end

end
function opponentNoteHit(id,d,t,s)


if t == 'Alt' then
anims = {'LEFT','DOWN','UP','RIGHT'}
characterPlayAnim('dad','sing'..anims[d+1]..getProperty('dad.idleSuffix'),true)
end

end