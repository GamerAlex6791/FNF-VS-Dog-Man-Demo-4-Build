-- Thanks for downloading this!
-- Please watch the tutorials if you need help. DO NOT DM ME!
-- You are allowed to use this for your mod as long as you credit me. ( And I'd like to see the mod once it finishes. :3 )
local SelectX = 990
local SelectY = -150

local CanSelect

SelectAmount = 1
SelectAmountBack = -1

local MaxProductLimit = 4
local MinProductLimit = 1

local ProductSelected
local ProductPrice

local GotProduct1
local GotProduct2

local TextNum
function onCreate()
	initSaveData('DataFolder', 'Folder')
	flushSaveData('DataFolder')
	MoneyAmount = getDataFromSave('DataFolder', 'Money') -- Do NOT Remove the name Money, unless you're changing all the variables.

	if songName == 'Shop' then
	
		function onStartCountdown() 
			if not allowCountdown then
				return Function_Stop
			end
		
			if allowCountdown then
				return Function_Continue
			end
		end
		playMusic('Shop', 0.8, true)

		makeLuaSprite('ShopControls', 'ui/shopinfo', -10, -100)

		scaleObject('ShopControls', 1, 1)
		addLuaSprite('ShopControls', true)
		setObjectCamera('ShopControls', 'camGame')
		setScrollFactor('ShopControls', 1, 1);

		makeLuaSprite('ShopProducts', 'ui/ShopProducts', 900, 300)
		setObjectCamera('ShopProducts', 'camGame')
		addLuaSprite('ShopProducts', true)
		scaleObject('ShopProducts', 1, 1)
		setScrollFactor('ShopProducts', 1, 1);
		
		makeLuaSprite('ProductAbout', 'ui/ProductAbout', 600, 550)
		setObjectCamera('ProductAbout', 'camGame')
		scaleObject('ProductAbout', 2, 2)
		addLuaSprite('ProductAbout', false)
		setScrollFactor('ProductAbout', 1, 1);

		makeLuaText('ProductsDescription', '?', 2000, 0, 550)
		setObjectCamera('ProductsDescription', 'camGame')
		setTextFont('ProductsDescription', 'Hi')
		setTextSize('ProductsDescription', 60)
		addLuaText('ProductsDescription', true)

		makeLuaText('PlayersMoney', '???', 0, 890, -108)
		setObjectCamera('PlayersMoney', 'camGame')
		setTextFont('PlayersMoney', 'pixel.otf')
		setTextSize('PlayersMoney', 100+(100*0));
		addLuaText('PlayersMoney', true)
		setScrollFactor('ShopControls', 1, 1);


		makeLuaSprite('selectIcon', 'ui/Select', 10, -50)
		scaleObject('selectIcon', 0.5, 0.5)
		setObjectCamera('selectIcon', 'camGame')
		addLuaSprite('selectIcon', true)

		ProductSelected = 0

		return Function_Continue;
	end
end

function onUpdate()
	if songName == 'Shop' then
		if keyJustPressed('pause') then
			exitMenu()
		end

		GotProduct1 = getDataFromSave('DataFolder', 'GotProduct1')
		GotProduct2 = getDataFromSave('DataFolder', 'GotProduct2')

		setTextString('ProductPriceText', ProductPrice)
		setTextString('PlayersMoney', MoneyAmount)
		if MoneyAmount == 'Money' then
			MoneyAmount = 0
		end

		if keyboardJustPressed('SPACE') then
			if MoneyAmount >= ProductPrice then
				if ProductSelected == 1 then -- 1
					if GotProduct1 == 1 then
						
					else
						GotProduct1 = 1
						BuyProduct1()
					end
				end
				if ProductSelected == 2 then -- 2
					if GotProduct2 == 1 then
						
					else
						GotProduct2 = 1
						BuyProduct2()
					end
				end
			else
				playSound('YouCant');
			end
		end

		if keyboardJustPressed('RIGHT') or keyboardJustPressed('LEFT') then

			if ProductSelected >= MaxProductLimit and keyboardJustPressed('RIGHT') then
				SelectX = 990
				SelectY = -150
				ProductSelected = 1
			elseif ProductSelected <= MinProductLimit and keyboardJustPressed('LEFT') then
				SelectX = 990
				SelectY = 200
				ProductSelected = 4
			else
				if keyboardJustPressed('RIGHT') then
					ProductSelected = ProductSelected + 1
				end
				if keyboardJustPressed('LEFT') then
					ProductSelected = ProductSelected - 1
				end
			end
			if ProductSelected == 1 then
				ProductPrice = 200
				SelectX = 620
				SelectY = 280
			elseif ProductSelected == 2 then
				ProductPrice = 900
				SelectX = 750
				SelectY = 290
			elseif ProductSelected == 3 then
				ProductPrice = 2500
				SelectX = 860
				SelectY = 280
			elseif ProductSelected == 4 then
				ProductPrice = 1
				SelectX = 940
				SelectY = 320
			end
			doTweenY('moveY', 'selectIcon', SelectY, 0.01, 'linear')
			doTweenX('moveX', 'selectIcon', SelectX, 0.01, 'linear')
			playSound('select');
		end
		if ProductSelected == 1 then
			setTextString('ProductsDescription', 'Look at his cool hat!')
		elseif ProductSelected == 2 then
			setTextString('ProductsDescription', 'Woah, this is scary.')
		elseif ProductSelected == 3 then
			setTextString('ProductsDescription', 'What even is this?')
		elseif ProductSelected == 4 then
			setTextString('ProductsDescription', 'Tiny.')
		end



		if GotProduct1 == 1 then
						
		else
			setDataFromSave('DataFolder', 'GotProduct1', 0)
			saveFile('weeks/WeekFreeplay.json', [[
				{
					"songs": [
						[
							"Shop Freeplay",
							"face",
							[
								146,
								113,
								253
							]
						]
					],
					"hiddenUntilUnlocked": false,
					"hideFreeplay": true,
					"weekBackground": "stage",
					"difficulties": "",
					"weekCharacters": [
						"dad",
						"bf",
						"gf"
					],
					"storyName": "Shop Freeplay",
					"weekName": "Custom Week12",
					"freeplayColor": [
						146,
						113,
						253
					],
					"hideStoryMode": true,
					"weekBefore": "tutorial",
					"startUnlocked": true
				}
					]])
		end

		if GotProduct2 == 1 then
						
		else
			setDataFromSave('DataFolder', 'GotProduct2', 0)
			saveFile('weeks/WeekShop.json', [[
				{
					"songs": [
						[
							"Shop Week Test",
							"face",
							[
								146,
								113,
								253
							]
						]
					],
					"hiddenUntilUnlocked": false,
					"hideFreeplay": true,
					"weekBackground": "stage",
					"difficulties": "",
					"weekCharacters": [
						"dad",
						"bf",
						"gf"
					],
					"storyName": "Shop Week",
					"weekName": "Custom Week",
					"freeplayColor": [
						146,
						113,
						253
					],
					"hideStoryMode": true,
					"weekBefore": "tutorial",
					"startUnlocked": true
				}
					]])
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if keyJustPressed('pause') and songName == 'Shop' then
		exitMenu();
	end
end

function exitMenu()
	setDataFromSave('DataFolder', 'Money', MoneyAmount)
	exitSong(true);
end

function onEndSong(Tutor)
	playSound('chaching');
	MoneyAmount = MoneyAmount + (104);
	setDataFromSave('DataFolder', 'Money', MoneyAmount)
end

function onEndSong(FriendClassic)
    playSound('chaching');
    MoneyAmount = MoneyAmount + (37);
    setDataFromSave('DataFolder', 'Money', MoneyAmount)
end

function BuyProduct1()
	playSound('chaching');
	MoneyAmount = MoneyAmount - ProductPrice


	setDataFromSave('DataFolder', 'GotProduct1', 1)
	saveFile('weeks/WeekFreeplay.json', [[
		{
			"songs": [
				[
					"Shop Freeplay",
					"face",
					[
						146,
						113,
						253
					]
				]
			],
			"hiddenUntilUnlocked": false,
			"hideFreeplay": false,
			"weekBackground": "stage",
			"difficulties": "",
			"weekCharacters": [
				"dad",
				"bf",
				"gf"
			],
			"storyName": "Shop Freeplay",
			"weekName": "Custom Week12",
			"freeplayColor": [
				146,
				113,
				253
			],
			"hideStoryMode": true,
			"weekBefore": "tutorial",
			"startUnlocked": true
		}
			]])
end

function BuyProduct2()
	playSound('chaching');
	MoneyAmount = MoneyAmount - ProductPrice


	setDataFromSave('DataFolder', 'GotProduct2', 1)
	saveFile('weeks/WeekShop.json', [[
		{
			"songs": [
				[
					"Shop Week Test",
					"face",
					[
						146,
						113,
						253
					]
				]
			],
			"hiddenUntilUnlocked": false,
			"hideFreeplay": false,
			"weekBackground": "stage",
			"difficulties": "",
			"weekCharacters": [
				"dad",
				"bf",
				"gf"
			],
			"storyName": "Shop Week",
			"weekName": "Custom Week",
			"freeplayColor": [
				146,
				113,
				253
			],
			"hideStoryMode": false,
			"weekBefore": "tutorial",
			"startUnlocked": true
		}
			]])
end