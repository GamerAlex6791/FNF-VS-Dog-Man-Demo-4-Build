--Script By Scrof 
--PLEASE GIVE ME CREDITS
--El 50% de este code tiene insultos lol
local MaxCombo = 0
Activo = false
Puto = false
function onCreate() 

makeLuaSprite('NSUS', 'empty', 0, 0)
makeGraphic('NSUS', 1280, 720, '000000')
setObjectCamera('NSUS', 'camother')
addLuaSprite('NSUS', true)

makeLuaSprite('FONDO', 'ResultScreen/BLUECITY', 10, 0)
setObjectCamera('FONDO', 'camother')
addLuaSprite('FONDO', true)

makeAnimatedLuaSprite('GF', 'resultScreen/resultGirlfriendGOOD', 800, 500) 
addAnimationByPrefix('GF', 'GOOD', 'Girlfriend Good Anim', 24, true) 
addAnimationByIndices('GF', 'GOOD2', 'Girlfriend Good Anim', '29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47', 24 , true)
objectPlayAnimation('GF', 'GOOD', true) 
setObjectCamera('GF', 'camother')
addLuaSprite('GF', true)

makeAnimatedLuaSprite('BF', 'resultScreen/resultBoyfriendGOOD', -550, 200) 
addAnimationByPrefix('BF', 'AHUEVO', 'Boyfriend Good Anim', 24, true) 
addAnimationByIndices('BF', 'AHUEVO2', 'Boyfriend Good Anim', '13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48', 24 , true)
objectPlayAnimation('BF', 'AHUEVO', true) 
setObjectCamera('BF', 'camother')
addLuaSprite('BF', true)

           makeLuaText('diffsong', "", 1000, 625, -15) 
           setObjectCamera('diffsong', 'camother')
           setTextColor('diffsong', 'F9FEB1')
           setTextBorder('diffsong', 2, 'F98862') 
           setTextSize('diffsong', 50)
           setTextFont('diffsong', 'vcr.ttf')
           setProperty('diffsong.angle', -3) 
           setTextAlignment('diffsong', 'left')
           addLuaText('diffsong')

makeLuaSprite('FONDOB', 'empty', 0, 0)
setObjectCamera('FONDOB', 'camother')
addLuaSprite('FONDOB', true)

makeLuaSprite('BAR', 'resultScreen/topBarBlack', 0, 0) 
setObjectCamera('BAR', 'camother')
addLuaSprite('BAR', true)

makeAnimatedLuaSprite('RESULTS', 'resultScreen/results', -175, 0) 
addAnimationByPrefix('RESULTS', 'RESULTS1', 'results instance', 24, true) 
addAnimationByPrefix('RESULTS', 'RESULTS2', 'results instance 10035', 24, true) 
objectPlayAnimation('RESULTS', 'RESULTS1', true) 
setObjectCamera('RESULTS', 'camother')
addLuaSprite('RESULTS', true)

makeAnimatedLuaSprite('SOUND', 'resultScreen/soundSystem', -25, -175) 
addAnimationByPrefix('SOUND', 'SOUND1', 'sound system', 24, true) 
addAnimationByPrefix('SOUND', 'SOUND2', 'sound system0064', 24, true) 
objectPlayAnimation('SOUND', 'SOUND1', true) 
setObjectCamera('SOUND', 'camother')
addLuaSprite('SOUND', true)

makeAnimatedLuaSprite('RATINGS', 'resultScreen/ratingsPopin', -150, 150) 
addAnimationByPrefix('RATINGS', 'RATINGS1', 'Categories', 24, true) 
addAnimationByPrefix('RATINGS', 'RATINGS2', 'Categories0033', 24, true) 
objectPlayAnimation('RATINGS', 'RATINGS1', true) 
setObjectCamera('RATINGS', 'camother')
addLuaSprite('RATINGS', true)

makeAnimatedLuaSprite('SCORE', 'resultScreen/scorePopin', -125, 525) 
addAnimationByPrefix('SCORE', 'SCORE1', 'tally score', 30, true) 
addAnimationByPrefix('SCORE', 'SCORE2', 'tally score0029', 24, true) 
objectPlayAnimation('SCORE', 'SCORE1', true) 
setObjectCamera('SCORE', 'camother')
addLuaSprite('SCORE', true)

makeAnimatedLuaSprite('BOTON', 'button', 1150, 582.5);
addAnimationByPrefix('BOTON', 'Pressed', 'Pressed', 12, false);
addAnimationByPrefix('BOTON', 'nonPress', 'nonPress', 24, false);
setObjectCamera('BOTON', 'camother');
addLuaSprite('BOTON', true);

           
           makeLuaText('hit', "", 1000, -75, 158) 
           setObjectCamera('hit', 'camother')
           setTextColor('hit', 'FFFFFF')
           setTextBorder('hit', 2, '000000') 
           setTextSize('hit', 50)
           setTextFont('hit', 'vcr.ttf')
           addLuaText('hit')
           
           makeLuaText('comboMAX', '0', 1000, -75, 215) 
           setObjectCamera('comboMAX', 'camother')
           setTextColor('comboMAX', 'FFFFFF')
           setTextBorder('comboMAX', 2, '000000') 
           setTextSize('comboMAX', 50)
           setTextFont('comboMAX', 'vcr.ttf')
           addLuaText('comboMAX')
           
           makeLuaText('sick', '0', 1000, -200, 290);  
	       setObjectCamera('sick', 'camother');
	       setTextColor('sick', '27AD53')
           setTextBorder('sick', 2, '1C374F') 
       	setTextSize('sick', 40);
	       setTextFont('sick', 'vcr.ttf')
	       addLuaText('sick');
	
	       makeLuaText('good', '0', 1000, -200, 340);  
	       setObjectCamera('good', 'camother');
	       setTextColor('good', '25B5EB')
           setTextBorder('good', 2, '251E6C') 
       	setTextSize('good', 40);
	       setTextFont('good', 'vcr.ttf')
	       addLuaText('good');
	
	       makeLuaText('bad', '0', 1000, -200, 395);  
	       setObjectCamera('bad', 'camother');
	       setTextColor('bad', 'E6B72B')
           setTextBorder('bad', 2, 'B02B1C') 
       	setTextSize('bad', 40);
	       setTextFont('bad', 'vcr.ttf')
	       addLuaText('bad');
	
	       makeLuaText('shit', '0', 1000, -200, 450);  
	       setObjectCamera('shit', 'camother');
	       setTextColor('shit', 'DC3834')
           setTextBorder('shit', 2, '4B1232') 
       	setTextSize('shit', 40);
	       setTextFont('shit', 'vcr.ttf')
	       addLuaText('shit');
  
           makeLuaText('misses', "", 1000, -200, 505)
           setObjectCamera('misses', 'camother')
           setTextColor('misses', 'E668E6')
           setTextBorder('misses', 2, '6C37C6') 
           setTextSize('misses', 40)
           setTextFont('misses', 'vcr.ttf')
           addLuaText('misses')
           
           makeLuaText('score', "", 1000, -100, 650) 
           setObjectCamera('score', 'camother')
           setTextColor('score', 'A0FFFF')
           setTextBorder('score', 2, '1A172F') 
           setTextSize('score', 60)
           setTextFont('score', 'vcr.ttf')
           addLuaText('score')
           
doTweenAlpha('12', 'FONDO', 0, 0.1, 'linear')
doTweenAlpha('12B', 'FONDOB', 0, 0.1, 'linear')
doTweenAlpha('N', 'NSUS', 0, 0.1, 'linear')
doTweenAlpha('22', 'GF', 0, 0.1, 'linear')
doTweenAlpha('33', 'BF', 0, 0.1, 'linear')
doTweenAlpha('44', 'BAR', 0, 0.1, 'linear')
doTweenAlpha('55', 'RESULTS', 0, 0.1, 'linear')
doTweenAlpha('66', 'SOUND', 0, 0.1, 'linear')
doTweenAlpha('77', 'RATINGS', 0, 0.1, 'linear')
doTweenAlpha('88', 'SCORE', 0, 0.1, 'linear')
doTweenAlpha('botonLOL', 'BOTON', 0, 0.1, 'linear') 

doTweenAlpha('FIDDBU', 'diffsong', 0, 0.1, 'linear')
doTweenAlpha('HITS1', 'hit', 0, 0.1, 'linear')
doTweenAlpha('MAX', 'comboMAX', 0, 0.1, 'linear')
doTweenAlpha('S', 'sick', 0, 0.1, 'linear')
doTweenAlpha('G', 'good', 0, 0.1, 'linear')
doTweenAlpha('B', 'bad', 0, 0.1, 'linear')
doTweenAlpha('SH', 'shit', 0, 0.1, 'linear')
doTweenAlpha('M', 'misses', 0, 0.1, 'linear')
doTweenAlpha('SCO', 'score', 0, 0.1, 'linear')

		
end
function onEndSong()
if not Puto then 
runTimer('BIENHECHOHIJODEPERRA', 2, 1) 
doTweenAlpha('1N', 'NSUS', 1, 0.6, 'backIn')
Activo = true
return Function_Stop;
end
return Function_Continue;
end
function onUpdate(elapsed)
if Activo == true then
if (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyPressed('enter') then 
objectPlayAnimation('BOTON', 'Pressed', false);
endSong() 
Puto = true
end
else
objectPlayAnimation('BOTON', 'nonPress', false);
end

local combo = getProperty('combo')
local sicks = getProperty('sicks')
local goods = getProperty('goods')
local bads = getProperty('bads')
local shits = getProperty('shits')

if combo > MaxCombo then
		MaxCombo = combo
end

setTextString('comboMAX', ''.. MaxCombo)
setTextString('misses', "" ..  misses)
setTextString('score', "" ..  score)
setTextString('diffsong', ''..difficultyName.. '  '..songName) 
setTextString('hit', "" ..  hits)
setTextString('sick', ''.. sicks)
setTextString('good', ''.. goods)
setTextString('bad', ''.. bads)
setTextString('shit', ''.. shits)	

end
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'BIENHECHOHIJODEPERRA' then
playMusic('resultsNORMAL', 1, false) 
doTweenAlpha('1', 'FONDO', 1, 0.1, 'linear') 
doTweenAlpha('12YU', 'FONDOB', 1, 0.1, 'linear')
doTweenAlpha('2', 'GF', 1, 0.1, 'linear')
doTweenAlpha('3', 'BF', 1, 0.1, 'linear')
doTweenAlpha('4', 'BAR', 1, 0.1, 'linear')
doTweenAlpha('5', 'RESULTS', 1, 0.1, 'linear')
doTweenAlpha('6', 'SOUND', 1, 0.1, 'linear')
doTweenAlpha('7', 'RATINGS', 1, 0.1, 'linear')
doTweenAlpha('8', 'SCORE', 1, 0.1, 'linear')
doTweenAlpha('BLOL', 'BOTON', 1, 0.1, 'linear')

objectPlayAnimation('GF', 'GOOD', true) 
objectPlayAnimation('BF', 'AHUEVO', true) 
objectPlayAnimation('RESULTS', 'RESULTS1', true) 
objectPlayAnimation('SOUND', 'SOUND1', true) 
objectPlayAnimation('RATINGS', 'RATINGS1', true)
objectPlayAnimation('SCORE', 'SCORE1', true) 
 
 doTweenAlpha('FIDDBRU', 'diffsong', 1, 0.1, 'linear')
doTweenAlpha('HITS2', 'hit', 1, 0.2, 'linear')
doTweenAlpha('MA2', 'comboMAX', 1, 0.4, 'linear')
doTweenAlpha('S2', 'sick', 1, 0.6, 'linear')
doTweenAlpha('G2', 'good', 1, 0.8, 'linear')
doTweenAlpha('B2', 'bad', 1, 1, 'linear')
doTweenAlpha('SH2', 'shit', 1, 1.2, 'linear')
doTweenAlpha('M2', 'misses', 1, 1.4, 'linear')
doTweenAlpha('SCO2', 'score', 1, 1.6, 'linear') 

doTweenY('BAJO1', 'diffsong', 110, 2, 'bounceIn') 

runTimer('BIEN', 1, 1)
runTimer('loopPutos', 1, 1) 
runTimer('songBucle', 5, 1) 
end
if tag == 'BIEN' then
objectPlayAnimation('RESULTS', 'RESULTS2', true) 
objectPlayAnimation('SOUND', 'SOUND2', true) 
objectPlayAnimation('RATINGS', 'RATINGS2', true)
objectPlayAnimation('SCORE', 'SCORE2', true) 
end
if tag == 'loopPutos' then
objectPlayAnimation('GF', 'GOOD2', true) 
objectPlayAnimation('BF', 'AHUEVO2', true) 
runTimer('loopPutos', 1, 1) 
end
if tag == 'songBucle' then
doTweenX('BAJO2', 'diffsong', -400, 5, 'linear') 
runTimer('Vrg', 7, 1) 
end
if tag == 'Vrg' then
setProperty('diffsong.x', 625) 
setProperty('diffsong.y', -15) 
doTweenY('BAJO3', 'diffsong', 110, 2, 'bounceIn')
runTimer('songBucle', 5, 1)  
end
end