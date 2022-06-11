function onCreate()
    --the background booooiiii
    
    makeLuaSprite('terrain','sonicshit/racing/terrain',-418,0)
    addLuaSprite('terrain',false)
    setScrollFactor('terrain', 0.2, 0.2);
    
    makeLuaSprite('sky','sonicshit/racing/sonicBoomSky',0,0)
    addLuaSprite('sky',false)
    
    makeAnimatedLuaSprite('clouds','sonicshit/racing/greenHillClouds',0,0)
    addAnimationByPrefix('clouds','cloudss','greenHillClouds',24,true)
    addLuaSprite('clouds',false)
    objectPlayAnimation('clouds','cloudss',false)
    setScrollFactor('clouds', 0.2, 0.2);
    
    makeAnimatedLuaSprite('arvores','sonicshit/racing/greenHillTrees',0,144)
    addAnimationByPrefix('arvores','lol','greenHillTrees',24,true)
    addLuaSprite('arvores',false)
    objectPlayAnimation('arvores','lol',false)
    setScrollFactor('arvores', 0.9, 0.9);
    
    makeAnimatedLuaSprite('grass','sonicshit/racing/greenHillRun',0,493)
    addAnimationByPrefix('grass','running','greenHillRun',36,true)
    addLuaSprite('grass',false)
    objectPlayAnimation('grass','running',false)
    
    makeAnimatedLuaSprite('sonicBody','sonicshit/sonicBody',343,440)
    addAnimationByPrefix('sonicBody','sanic','SONIC RUN',24,true)
    addLuaSprite('sonicBody',false)
    objectPlayAnimation('sonicBody','sanic',false)
    
    makeAnimatedLuaSprite('bfBody','sonicshit/bfRunningBottom',882,385)
    addAnimationByPrefix('bfBody','body','BF BOTTOM',24,true)
    addLuaSprite('bfBody',false)
    objectPlayAnimation('bfBody','body',false)
    
end

function onStepHit()
  if curStep == 388 then --409
    triggerEvent('Change Character', 'dad', 'sonic-run-invisible');
    
    setCharacterX('dad', 393);
    
    setCharacterY('dad', 65);
    
    makeLuaSprite('terrain','sonicshit/racing/terrain',-418,0)
    addLuaSprite('terrain',false)
    setScrollFactor('terrain', 0.2, 0.2);
    
    makeLuaSprite('sky','sonicshit/racing/sonicBoomSky',0,0)
    addLuaSprite('sky',false)
    
    makeAnimatedLuaSprite('clouds','sonicshit/racing/greenHillClouds',0,0)
    addAnimationByPrefix('clouds','cloudss','greenHillClouds',24,true)
    addLuaSprite('clouds',false)
    objectPlayAnimation('clouds','cloudss',false)
    setScrollFactor('clouds', 0.2, 0.2);
    
    makeAnimatedLuaSprite('arvores','sonicshit/racing/greenHillTrees',0,144)
    addAnimationByPrefix('arvores','lol','greenHillTrees',24,true)
    addLuaSprite('arvores',false)
    objectPlayAnimation('arvores','lol',false)
    setScrollFactor('arvores', 0.9, 0.9);
    
    makeAnimatedLuaSprite('grass','sonicshit/racing/greenHillRun',0,493)
    addAnimationByPrefix('grass','running','greenHillRun',36,true)
    addLuaSprite('grass',false)
    objectPlayAnimation('grass','running',false)
    
    makeAnimatedLuaSprite('transformation','sonicshit/racing/SUPER_SONIC_TRANSFORM',343,140)
    addAnimationByPrefix('transformation','cutscene','SONIC TRANSFORM',16,true)
    addLuaSprite('transformation',false)
    objectPlayAnimation('transformation','cutscene',false)
    
    makeAnimatedLuaSprite('bfBody','sonicshit/bfRunningBottom',882,385)
    addAnimationByPrefix('bfBody','body','BF BOTTOM',24,true)
    addLuaSprite('bfBody',false)
    objectPlayAnimation('bfBody','body',false)
    
  end
  if curStep == 406 then --65
    triggerEvent('Change Character', 'dad', 'super-sonic');
    
    setCharacterX('dad', 293);
    
    setCharacterY('dad', -65);
    
    makeLuaSprite('terrain','sonicshit/racing/terrain',-418,0)
    addLuaSprite('terrain',false)
    setScrollFactor('terrain', 0.2, 0.2);
    
    makeLuaSprite('sky','sonicshit/racing/sonicBoomSky',0,0)
    addLuaSprite('sky',false)
    
    makeAnimatedLuaSprite('clouds','sonicshit/racing/greenHillClouds',0,0)
    addAnimationByPrefix('clouds','cloudss','greenHillClouds',24,true)
    addLuaSprite('clouds',false)
    objectPlayAnimation('clouds','cloudss',false)
    setScrollFactor('clouds', 0.2, 0.2);
    
    makeAnimatedLuaSprite('arvores','sonicshit/racing/greenHillTrees',0,144)
    addAnimationByPrefix('arvores','lol','greenHillTrees',24,true)
    addLuaSprite('arvores',false)
    objectPlayAnimation('arvores','lol',false)
    setScrollFactor('arvores', 0.9, 0.9);
    
    makeAnimatedLuaSprite('grass','sonicshit/racing/greenHillRun',0,493)
    addAnimationByPrefix('grass','running','greenHillRun',36,true)
    addLuaSprite('grass',false)
    objectPlayAnimation('grass','running',false)
    
    makeLuaSprite('escuro','sonicshit/sombra',0,0)
    addLuaSprite('escuro',false)
    scaleObject('escuro', 2, 2)
    
    makeAnimatedLuaSprite('aurazinha','sonicshit/racing/aura',243,140)
    addAnimationByPrefix('aurazinha','animation','aura',24,true)
    addLuaSprite('aurazinha',true)
    objectPlayAnimation('aurazinha','animation',false)
    
    makeAnimatedLuaSprite('bfBody','sonicshit/bfRunningBottom',882,385)
    addAnimationByPrefix('bfBody','body','BF BOTTOM',24,true)
    addLuaSprite('bfBody',false)
    objectPlayAnimation('bfBody','body',false)
    
  end
  if curStep == 1239 then
     triggerEvent('Change Character', 'bf', 'super-bf');
     
     setCharacterX('bf', 922);
     
     setCharacterY ('bf', -45)
    
    makeLuaSprite('terrain','sonicshit/racing/terrain',-418,0)
    addLuaSprite('terrain',false)
    setScrollFactor('terrain', 0.2, 0.2);
    
    makeLuaSprite('sky','sonicshit/racing/sonicBoomSky',0,0)
    addLuaSprite('sky',false)
    
    makeAnimatedLuaSprite('clouds','sonicshit/racing/greenHillClouds',0,0)
    addAnimationByPrefix('clouds','cloudss','greenHillClouds',24,true)
    addLuaSprite('clouds',false)
    objectPlayAnimation('clouds','cloudss',false)
    setScrollFactor('clouds', 0.2, 0.2);
    
    makeAnimatedLuaSprite('arvores','sonicshit/racing/greenHillTrees',0,144)
    addAnimationByPrefix('arvores','lol','greenHillTrees',24,true)
    addLuaSprite('arvores',false)
    objectPlayAnimation('arvores','lol',false)
    setScrollFactor('arvores', 0.9, 0.9);
    
    makeAnimatedLuaSprite('grass','sonicshit/racing/greenHillRun',0,493)
    addAnimationByPrefix('grass','running','greenHillRun',36,true)
    addLuaSprite('grass',false)
    objectPlayAnimation('grass','running',false)
    
    makeLuaSprite('escuro','sonicshit/sombra',0,0)
    addLuaSprite('escuro',false)
    scaleObject('escuro', 2, 2)
    
    makeAnimatedLuaSprite('aurazinha','sonicshit/racing/aura',243,140)
    addAnimationByPrefix('aurazinha','animation','aura',24,true)
    addLuaSprite('aurazinha',true)
    objectPlayAnimation('aurazinha','animation',false)
    
    makeAnimatedLuaSprite('bfBody','sonicshit/bfRunningBottomSuper',882,385)
    addAnimationByPrefix('bfBody','body','BF BOTTOM',24,true)
    addLuaSprite('bfBody',false)
    objectPlayAnimation('bfBody','body',false)
    
  end
end