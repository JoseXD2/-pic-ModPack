function onCreate()
	makeLuaSprite('crosshair', 'Target', 855, 80);
	setObjectCamera('crosshair', 'other');
	setScrollFactor('crosshair', 0, 0);
	scaleObject('crosshair', 0.5, 0.5);


	makeLuaSprite('crosshair2', 'Target', 968, 80);
	setObjectCamera('crosshair2', 'other');
	setScrollFactor('crosshair2', 0, 0);
	scaleObject('crosshair2', 0.5, 0.5);


	makeLuaSprite('crosshair3', 'Target', 1081, 80);
	setObjectCamera('crosshair3', 'other');
	setScrollFactor('crosshair3', 0, 0);
	scaleObject('crosshair3', 0.5, 0.5);

	makeLuaSprite('crosshair4', 'Target', 742, 80);
	setObjectCamera('crosshair4', 'other');
	setScrollFactor('crosshair4', 0, 0);
	scaleObject('crosshair4', 0.5, 0.5);


	addLuaSprite('crosshair4', true); 
	addLuaSprite('crosshair3', true); 
	addLuaSprite('crosshair2', true); 
	addLuaSprite('crosshair', true); 
        setProperty('crosshair.visible', false);
        setProperty('crosshair2.visible', false);
        setProperty('crosshair3.visible', false);
        setProperty('crosshair4.visible', false);
end

function onStepHit()
if curStep == 001 then 
if downscroll then
		doTweenY('CrosshairTweenY', 'crosshair', 580, 1, 'quadIn');
		doTweenY('Crosshair2TweenY', 'crosshair2', 580, 1, 'quadIn');
		doTweenY('Crosshair3TweenY', 'crosshair3', 580, 1, 'quadIn');
		doTweenY('Crosshair4TweenY', 'crosshair4', 580, 1, 'quadIn');
end
if middlescroll then
		doTweenX('CrosshairTweenX', 'crosshair', 533, 1, 'quadIn');
		doTweenX('Crosshair2TweenX', 'crosshair2', 646, 1, 'quadIn');
		doTweenX('Crosshair3TweenX', 'crosshair3', 759, 1, 'quadIn');
		doTweenX('Crosshair4TweenX', 'crosshair4', 420, 1, 'quadIn');
end
end
if curStep == 112 then 
        setProperty('crosshair2.visible', true);
end
if curStep == 128 then 
        setProperty('crosshair2.visible', false);
end
if curStep == 160 then 
        setProperty('crosshair.visible', true);
end
if curStep == 176 then 
        setProperty('crosshair.visible', false);
end
if curStep == 272 then 
        setProperty('crosshair3.visible', true);
end
if curStep == 288 then 
        setProperty('crosshair3.visible', false);
        setProperty('crosshair4.visible', true);
end
if curStep == 296 then 
        setProperty('crosshair.visible', true);
end
if curStep == 304 then 
        setProperty('crosshair4.visible', false);
end
if curStep == 312 then 
        setProperty('crosshair.visible', false);
end
if curStep == 384 then 
        setProperty('crosshair3.visible', true);
end
if curStep == 400 then
        setProperty('crosshair3.visible', false);
        setProperty('crosshair2.visible', true);
end
if curStep == 416 then 
        setProperty('crosshair2.visible', false);
end
if curStep == 496 then 
        setProperty('crosshair2.visible', true);
end
if curStep == 520 then 
        setProperty('crosshair4.visible', true);
end
if curStep == 528 then 
        setProperty('crosshair2.visible', false);
end
if curStep == 536 then 
        setProperty('crosshair4.visible', false);
end
if curStep == 560 then 
        setProperty('crosshair2.visible', true);
end
if curStep == 576 then 
        setProperty('crosshair4.visible', true);
        setProperty('crosshair2.visible', false);
end
if curStep == 592 then 
        setProperty('crosshair4.visible', false);
end
if curStep == 608 then 
        setProperty('crosshair.visible', true);
end
if curStep == 636 then 
        setProperty('crosshair.visible', false);
end
if curStep == 752 then 
        setProperty('crosshair2.visible', true);
end
if curStep == 768 then 
        setProperty('crosshair2.visible', false);
end
if curStep == 880 then 
        setProperty('crosshair.visible', true);
end
if curStep == 896 then 
        setProperty('crosshair.visible', false);
        setProperty('crosshair3.visible', true);
end
if curStep == 912 then 
        setProperty('crosshair3.visible', false);
        setProperty('crosshair.visible', true);
end
if curStep == 928 then 
        setProperty('crosshair.visible', false);
        setProperty('crosshair4.visible', true);
end
if curStep == 936 then 
        setProperty('crosshair3.visible', true);
end
if curStep == 944 then 
        setProperty('crosshair4.visible', false);
end
if curStep == 952 then 
        setProperty('crosshair3.visible', false);
end
if curStep == 1008 then 
        setProperty('crosshair3.visible', true);
end
if curStep == 1024 then 
        setProperty('crosshair3.visible', false);
end
if curStep == 1040 then 
        setProperty('crosshair4.visible', true);
end
if curStep == 1056 then 
        setProperty('crosshair4.visible', false);
end
if curStep == 1136 then 
        setProperty('crosshair4.visible', true);
end
if curStep == 1152 then 
        setProperty('crosshair4.visible', false);
end
if curStep == 1200 then 
        setProperty('crosshair4.visible', true);
end
if curStep == 1216 then 
        setProperty('crosshair4.visible', false);
end
if curStep == 1248 then 
        setProperty('crosshair.visible', true);
end
if curStep == 1264 then 
        setProperty('crosshair.visible', false);
end
if curStep == 1296 then 
        setProperty('crosshair2.visible', true);
end
if curStep == 1312 then 
        setProperty('crosshair2.visible', false);
end
if curStep == 1392 then 
        setProperty('crosshair.visible', true);
end
if curStep == 1408 then 
        setProperty('crosshair.visible', false);
end
if curStep == 1424 then 
        setProperty('crosshair2.visible', true);
end
if curStep == 1440 then 
        setProperty('crosshair2.visible', false);
        setProperty('crosshair3.visible', true);
end
if curStep == 1448 then 
        setProperty('crosshair3.visible', true);
end
if curStep == 1456 then 
        setProperty('crosshair3.visible', false);
end
if curStep == 1464 then 
        setProperty('crosshair3.visible', false);
end
end