function onCreate() 
   -- background shit 
   makeLuaSprite('BG_bluskys', 'BG_bluskys', -600, -220); 
   setLuaSpriteScrollFactor('BG_bluskys', 0.9, 0.9); 
        addLuaSprite('BG_bluskys', false); 
   close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage 
end 
