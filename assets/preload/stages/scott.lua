function onCreate()

	makeLuaSprite('oscuro','scott/gradient', 150, 400);
	setLuaSpriteScrollFactor('oscuro', 0.9, 0.9);
	scaleObject('oscuro', 1.2, 1.2);

	makeLuaSprite('luz','scott/grad1', -300, 300);
	setLuaSpriteScrollFactor('luz', 0.9, 0.9);
	scaleObject('luz', 1.2, 1.2);

	if not lowQuality then
--RANGO 2 Agregen lo que quieran y podran desactivarlo en las opciones del psych engine.
	makeAnimatedLuaSprite('la luz','scott/lightning', 0, 0);
	setLuaSpriteScrollFactor('la luz', 0.9, 0.9);
	scaleObject('la luz', 3.0, 3.0);
	
	makeAnimatedLuaSprite('estres','scott/light purple', -320, 120);
	setLuaSpriteScrollFactor('estres', 0.9, 0.9);
	scaleObject('estres', 1.5, 1.5);



	
	end
--RANGO3 Va a leer en orden y podras usar el setObjectOrder para ponerlo encima de girfriend.
	addLuaSprite('oscuro', false);
	addLuaSprite('luz', true);
	setObjectOrder('luz', 1);
	addAnimationByPrefix('la luz', 'idle', 'pink', 24, true);
	addAnimationByPrefix('estres', 'idle', 'light purple idle', 5, true);
	setObjectOrder('estres', 7);
end