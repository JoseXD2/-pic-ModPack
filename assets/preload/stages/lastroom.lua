function onCreate()
  --background
  makeLuaSprite('back','lastback',-600,-500)
  scaleObject('back',1.2,1.2)
  makeLuaSprite('beams','BEAM',-600,-500)
  addLuaSprite('back',false)
  addLuaSprite('beams',false)
  close(true);
  end