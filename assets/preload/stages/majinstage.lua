function onCreate()
  --background
  makeLuaSprite('bg','bg',-1000,-500)
  
  makeAnimatedLuaSprite('bg2','collumns1',-1000,-400)
  addAnimationByPrefix('bg2','idle','collumns1',24,true)
  objectPlayAnimation('bg2','collumns1',true)
  
  makeAnimatedLuaSprite('bg3','collumns2',-1150,-400)
  addAnimationByPrefix('bg3','idle','collumns2',24,true)
  objectPlayAnimation('bg3','collumns2',true)
  
  makeAnimatedLuaSprite('bg4','collumns3',-1100,-500)
  addAnimationByPrefix('bg4','idle','collumns3',24,true)
  objectPlayAnimation('bg4','collumns3',true)
  
  
  addLuaSprite('bg',false)
  addLuaSprite('bg4',false)
  addLuaSprite('bg3',false)
  addLuaSprite('bg2',false)
 end
 
function onGameOver()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bfblue'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'fun_is_not_over'); --put in mods/music/
end