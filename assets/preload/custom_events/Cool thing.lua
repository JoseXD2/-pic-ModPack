function onEvent(name,value1,value2)
	if name == 'Cool thing' then

		if value1 == '1' then
			noteTweenX('bfTween1', 4, 90, 0.01, 'linear');
			noteTweenX('bfTween2', 5, 205, 0.01, 'linear');
			noteTweenX('bfTween3', 6, 315, 0.01, 'linear');
			noteTweenX('bfTween4', 7, 425, 0.01, 'linear');
			noteTweenX('dadTween1', 0, 730, 0.01, 'linear');
			noteTweenX('dadTween2', 1, 845, 0.01, 'linear');
			noteTweenX('dadTween3', 2, 955, 0.01, 'linear');
			noteTweenX('dadTween4', 3, 1065, 0.01, 'linear');
		end

		if value1 == '2' then
			noteTweenX('dadTween1', 0, 90, 0.01, 'linear');
			noteTweenX('dadTween2', 1, 205, 0.01, 'linear');
			noteTweenX('dadTween3', 2, 315, 0.01, 'linear');
			noteTweenX('dadTween4', 3, 425, 0.01, 'linear');
			noteTweenX('bfTween1', 4, 730, 0.01, 'linear');
			noteTweenX('bfTween2', 5, 845, 0.01, 'linear');
			noteTweenX('bfTween3', 6, 955, 0.01, 'linear');
			noteTweenX('bfTween4', 7, 1065, 0.01, 'linear');
		end
	end
end