function onEvent(name)
	if name == 'Laser' then
        --setObjectX('laser', getCharacterX('dad') + 100);
        setProperty('laser.x', getCharacterX('dad') + 100);
        triggerEvent('Play Animation', 'shoot', 'dad');
        addLuaSprite('laser', true);
        --setObjectOrder('laser',4);
        doTweenX('laser shoot', 'laser', 2000, 0.2, 'linear');
        doTweenColor('wallColorl', 'wall', '800080', 0.2, 'quadIn');
        doTweenColor('floorColor', 'midground', '800080', 0.2, 'quadIn');
        doTweenColor('inkfellColor', 'inkfall', '800080', 0.2, 'quadIn');
        doTweenColor('pillarColor', 'pillar', '800080', 0.2, 'quadIn');

        doTweenAlpha('filterAlphal', 'glitch', 0.8, 0.1, 'linear');
	end  
end

function onTweenCompleted(tag)
    -- A tween you called has been completed, value "tag" is it's tag
    -- setObjectX('laser', getCharacterX('dad') + 100);
    --doTweenX('laser return', 'laser', getCharacterX('dad') + 100, 0.001, 'linear');
    if tag == 'laser shoot' then
    removeLuaSprite('laser', false);
    end

    if tag == 'wallColorl' then
       
        doTweenColor('wallColor', 'wall', 'FFFFFF', 1, 'quadIn');
        doTweenColor('floorColor', 'midground', 'FFFFFF', 1, 'quadIn');
        doTweenColor('inkfellColor', 'inkfall', 'FFFFFF', 1, 'quadIn');
        doTweenColor('pillarColor', 'pillar', 'FFFFFF', 1, 'quadIn');
    
        --doTweenAlpha('filterAlpha', 'glitch', 0, 0.7, 'quadIn');
        end

        if tag == 'filterAlphal' then
        
        doTweenAlpha('filterAlpha', 'glitch', 0, 2, 'quadOut');
        end
end

