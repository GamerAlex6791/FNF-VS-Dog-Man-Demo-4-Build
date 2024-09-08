function onCreate()
	makeLuaSprite('chuckecheesse', 'chuckecheese', -1500, -1500);
	addLuaSprite('chuckecheesse', false);
	scaleObject('chuckecheesse', 2, 2);

	makeLuaSprite('chuckstuff', 'chuckstuff', -1500, -1500);
	addLuaSprite('chuckstuff', false);
	scaleObject('chuckstuff', 2, 2);

	setProperty('chuckecheese.visible', true);
	setProperty('chuckstuff.visible', false);
end

-- stage swapping through play animation event.
function onEvent(name,value1,value2)
	if name == 'Stage Swap' then 
		
		if value1 == 'stage1' then
			setProperty('chuckecheesse.visible', true);
			setProperty('chuckstuff.visible', false);
		end
		if value1 == 'chuckstuff' then
			setProperty('chuckecheesse.visible', false);
			setProperty('chuckstuff.visible', true);
		end
		if value1 == 'stage3' then
			setProperty('chuckecheesse.visible', false);
			setProperty('chuckstuff.visible', false);
		end
	end
end