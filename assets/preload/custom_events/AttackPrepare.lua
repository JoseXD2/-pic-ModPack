local Warn = 0;
function onCreate()
	if downscroll then
			makeAnimatedLuaSprite('warn', 'qt/attack_alert_NEW', 490, 210);
		else
			makeAnimatedLuaSprite('warn', 'qt/attack_alert_NEW', 490, 210);
		end
		makeAnimatedLuaSprite('attack', 'qt/attackv6', -2060, 410);
		setObjectCamera('warn', 'hud');
		setObjectCamera('attack', 'hud');
		addAnimationByPrefix('warn', 'one', 'kb_attack_animation_alert-single', 24, false)
		addAnimationByPrefix('warn', 'two', 'kb_attack_animation_alert-double', 24, false)
		addAnimationByPrefix('attack', 'fire', 'kb_attack_animation_fire', 24, false)
		setLuaSpriteScrollFactor('warn', 0, 0);
		setLuaSpriteScrollFactor('attack', 0, 0);
	end	

function onEvent(name, value1, value2)
	if name == "AttackPrepare" then
		if Warn < 12 or Warn == 12 then
			function onBeatHit()
			Warn = Warn + 1;
				if Warn == 1 or Warn == 2 then
					setProperty('warn.scale.x', 1.5)
					setProperty('warn.scale.y', 1.5)
					playSound('alert', 5)
					addLuaSprite('warn', false);
					objectPlayAnimation('warn', 'one', true)
					Warn = Warn + 1;
				end
			end
		end
	end
end