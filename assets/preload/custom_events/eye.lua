eye = false;
ceye = false;
Time = 0;

function onCreate()
cli = 0;
rx = getRandomInt('0', '500', true);
ry = getRandomInt('0', '500', true);
rxx = getRandomInt('0', '500', true);
ryy = getRandomInt('0', '500', true);
     Dodged = false;
  setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
  a = 0;  
end

function onEvent(name, value1, value2)
if name == "eye" then
     
    Time = (value1);
    f = tonumber(value2);
        cli = cli + 1;
	makeAnimatedLuaSprite('cli', 'cli', (getRandomInt('0', '500', true)), (getRandomInt('0', '500', true)));
        luaSpriteAddAnimationByPrefix('cli', 'idle', 'idle', 25, true);
        luaSpriteAddAnimationByPrefix('cli', 'hit', 'hit', 25, true);
        luaSpriteAddAnimationByPrefix('cli', 'dead', 'dead', 25, true);
	setObjectCamera('cli', 'hud');
	scaleLuaSprite('cli', 0.50, 0.50); 
        addLuaSprite('cli', true); 
        objectPlayAnimation('cli', 'idle', false)

        ceye = true;
	runTimer('lol', Time);
	end
end

function onUpdate()

    if mouseReleased() and ceye == true then
     if getMouseX('hud') > getProperty('cli.x') and getMouseY('hud') > getProperty('cli.y') and getMouseX('hud') < getProperty('cli.x') + getProperty('cli.width') and getMouseY('hud') < getProperty('cli.y') + getProperty('cli.height') and mouseReleased() then
        a = a + 1;

               makeLuaText("aC", a.. "/" ..f, 400, 450, 468)
       setTextString("ao", Time);
        setTextSize("aC", 58)
        setTextColor("aC", 'FF0000')
        setTextBorder("aC", 2.9, '000000')
        addLuaText("aC") 
        triggerEvent('Screen Shake', '0.10, 0.10');
        objectPlayAnimation('cli', 'hit', false)
        doTweenColor('clc', 'cli', 'FF0000', 0.1, 'linear')
        doTweenY(cx, cli, (getRandomInt('0', '500', true)), 0.1, ease);
         setProperty('cli.x', (getRandomInt('0', '800', true)))
         setProperty('cli.y', (getRandomInt('0', '600', true)))
         runTimer('oo', 0.15);
         runTimer('ii', 0.25);
   end
     if a == f then
        removeLuaText("aC", flase)
        eye = true;
        removeLuaSprite('cli')
        ceye = false; 
        a = a - f;
   end              
end

end


function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'lol' and eye == false then
   setProperty('health', 0);
   
   elseif tag == 'lol' and eye == true then
   Dodged = false;
   
   end
   if tag == 'oo' then
     doTweenColor('clc', 'cli', 'FFFFFF', 0.1, 'linear')
end
  if tag == 'ii' then
     objectPlayAnimation('cli', 'idle', false)
end
end



