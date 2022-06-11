function onCreate()
  --background
  makeAnimatedLuaSprite('bg','CGBG',-200,-300)
  addAnimationByPrefix('bg','idle','new',24,true)
  objectPlayAnimation('bg','new',true)
  scaleObject('bg',1.1,1.1,true)
  
  
  makeAnimatedLuaSprite('mg3','bopper2',350,600)
  addAnimationByPrefix('mg3','idle','crowd1',24,true)
  objectPlayAnimation('mg3','crowd1',true)
  scaleObject('mg3',1.1,1.1,true)
  
  makeAnimatedLuaSprite('mg4','bopper1',550,600)
  addAnimationByPrefix('mg4','idle','crowd2',24,true)
  objectPlayAnimation('mg4','crowd2',true)
  scaleObject('mg4',1.1,1.1,true)
   
  addLuaSprite('bg',false);
  addLuaSprite('mg',false)
  addLuaSprite('bg2',false)
  addLuaSprite('fg',false);
  addLuaSprite('mg3',false)
  addLuaSprite('mg4',false)
  addLuaSprite('fg2',false)
  
  close(true);
  end