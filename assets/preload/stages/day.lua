function onCreate() 
   -- background shit 
   makeLuaSprite('BG_day', 'BG_day', -600, -220); 
   setLuaSpriteScrollFactor('BG_day', 0.9, 0.9); 
        addLuaSprite('BG_day', false); 
   close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage 
end 
