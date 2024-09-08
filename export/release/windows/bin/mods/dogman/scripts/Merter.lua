healed = false
canHeal = false
local atkcounter = math.random(43, 70)

function onSongStart()
	atkcounter = 0
end

function onCountdownTick()
	atkcounter = 0
end

function onStepHit()
canHeal = false
	if curStep >= 0 then
		canHeal = true
	end
end
function onUpdate(elapsed)

		makeLuaSprite('yippee', '', 1160, 300)
		makeGraphic('yippee', 50, 300, '1429AE')
		addLuaSprite('yippee',true)
		setObjectCamera('yippee','hud')

		makeLuaSprite('counter', '', 1160, 550)
		makeGraphic('counter', 50, 1, '1EDCFE')
		addLuaSprite('counter',true)
		setObjectCamera('counter','hud')

		makeLuaSprite('bar', 'HealBar', 1110, 200)
		addLuaSprite('bar',true)
		setObjectCamera('bar','hud')

		makeLuaText('atkText', 'atk: ' .. atkcounter .. '%' , 300,1050,500)
		addLuaText('atkText', true)
		setTextSize('atkText', 35);
		setObjectCamera('atkText', 'hud')
		setObjectCamera('atkText','hud')
		setProperty('atkText.alpha', 0)
		setProperty('counter.alpha', 0.9)
		if atkcounter == 120 then 
			setProperty('counter.alpha',1)

		end

		function goodNoteHit(id, direction, noteType, isSustainNote)
			if not isSustainNote then
				if atkcounter ~= 120 then
      					atkcounter = atkcounter + 2
	 			end
				setProperty('counter.scale.y',atkcounter * 2)
				setProperty('counter.origin.y', 1)
			end
	
			--makeLuaText('atkText', 'atk: ' .. atkcounter .. '%' , 300,1050,500)
		end



		function onUpdate(elapsed)
		  	setTextString('atkText',atkcounter .. '%' )
			if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Z') then
				if atkcounter == 120 then
					atkcounter = atkcounter - atkcounter 
					setProperty('counter.scale.y',1)
					setProperty('health',getProperty('health') + 1)
					playSound('heal', 0.8)
				end
			end
		end
end

function opponentNoteHit(id, dir, noteType)
	newHealth = getProperty('health') - healthdrainAmt
	if newHealth >= healthdrainLow then
		setProperty('health', newHealth)
	end
end