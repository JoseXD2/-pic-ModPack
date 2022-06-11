local replacelol = 0
function onCreate()
  
    makeLuaSprite('sky','sonicshit/greenHillSky',replacelol,replacelol)
    addLuaSprite('sky',false)
    setScrollFactor('sky', replacelol, replacelol);
    
    makeLuaSprite('greenBG','sonicshit/greenHillBackground',replacelol,replacelol)
    addLuaSprite('greenBG',false)
    setScrollFactor('greenBG', 0.1, 0.1);
    
    makeLuaSprite('platform','sonicshit/platforms',288,413)
    addLuaSprite('platform',false)
    
    makeLuaSprite('grass','sonicshit/greenHillGrass',replacelol,replacelol)
    addLuaSprite('grass',false)
    setScrollFactor('grass', 1, 1);
    
end
function onStepHit()
  if curStep == 591 then
     triggerEvent('Play Animation', 'HEY!!', 'dad');
  end
end