function onCreate()
	precacheImage('BendyVideo')
	precacheImage('Curtain3')
	precacheImage('Curtain4')
	precacheImage('dabg')
	-- background shit
	makeLuaSprite('dabg', 'dabg', -305, 20);
	scaleObject('dabg', 1.5, 1.5);

	makeLuaSprite('Anime', 'Anime', -120, 70);
	scaleObject('Anime', 5.4, 5.2);
 
	makeLuaSprite('Curtain1', 'Curtain1', 10, 160);
	scaleObject('Curtain1', 1.1, 1.1);

	makeLuaSprite('Curtain2', 'Curtain2', 690, 160);
	scaleObject('Curtain2', 1.4, 1.1);

	makeLuaSprite('Curtain3', 'Curtain3', -520, 160);
	scaleObject('Curtain3', 1.1, 1.1);

	makeLuaSprite('Curtain4', 'Curtain4', 1630, 160);
	scaleObject('Curtain4', 1.4, 1.1);

     makeAnimatedLuaSprite('BendyVideo', 'BendyVideo', -130, -55);
     scaleObject('BendyVideo', 2.2, 2.1);

addLuaSprite('dabg', false);
addLuaSprite('BendyVideo', false);
addLuaSprite('Curtain1', false);
addLuaSprite('Curtain2', false); 
addLuaSprite('Curtain3', false);
addLuaSprite('Curtain4', false); 
addLuaSprite('Anime', true); 
addAnimationByPrefix('BendyVideo', 'idle', 'bendyVideo idle dance00', 24, true);

setProperty('Anime.visible', false);
setProperty('BendyVideo.visible', false);
setProperty('Curtain3.visible', false);
setProperty('Curtain4.visible', false);


end

function onEvent(name,value1,value2)
	if name == 'Trigger BG Ghouls' then 
		if value1 == '1' then
    setProperty('Anime.visible', true);
	setProperty('Curtain1.visible', false);
	setProperty('Curtain2.visible', false);

          end

		if value1 == '2' then
    setProperty('BendyVideo.visible', true);
	setProperty('Anime.visible', false);
 	setProperty('Curtain3.visible', true);
	setProperty('Curtain4.visible', true);
	
		end
		
	end
end