function onCreate() 
   -- background shit 
   makeLuaSprite('BG_ronsip', 'BG_ronsip', -600, -220); 
   setLuaSpriteScrollFactor('BG_ronsip', 0.9, 0.9); 
        addLuaSprite('BG_ronsip', false); 
   close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage 
end 
