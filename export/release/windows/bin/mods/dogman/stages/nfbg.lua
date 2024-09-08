function onCreate()
    makeLuaSprite('sky', 'nfbg/NF-Sky', -904.4, -500.5);
    scaleObject('sky', 0.8, 0.8);
    setScrollFactor('sky', 0, 0);
    setProperty('sky.antialiasing', true);
    setObjectOrder('sky', 0);
    addLuaSprite('sky', false);

    makeLuaSprite('city', 'nfbg/NF-Cities', -300.4, 20.5);
    scaleObject('city', 0.8, 0.8);
    setScrollFactor('city', 0.2, 0.2);
    setProperty('city.antialiasing', true);
    setObjectOrder('city', 1);
    addLuaSprite('city', false);

    makeAnimatedLuaSprite('dnpc', 'nfbg/npcs/Drizzle', 1000, 320);
    scaleObject('dnpc', 1, 1);
    addAnimationByPrefix('dnpc', 'idle', 'Idle', 24, true);
    setScrollFactor('dnpc', 0.7, 0.7);
    setProperty('dnpc.antialiasing', true);
    setObjectOrder('dnpc', 2);
    addLuaSprite('dnpc', false);

    makeLuaSprite('build', 'nfbg/NF-Buildings', -300.4, 220.5);
    scaleObject('build', 0.8, 0.8);
    setScrollFactor('build', 0.7, 0.7);
    setProperty('build.antialiasing', true);
    setObjectOrder('build', 3);
    addLuaSprite('build', false);

    makeLuaSprite('road', 'nfbg/NF-Road', -300, 1000);
    scaleObject('road', 0.8, 0.8);
    setScrollFactor('road', 1, 1);
    setProperty('road.antialiasing', true);
    setObjectOrder('road', 4);
    addLuaSprite('road', false);

	makeAnimatedLuaSprite('walk', 'nfbg/npcs/walkers',-1500, 1150);
	scaleObject('walk', 0.7, 0.7);
	addAnimationByPrefix('walk', '', '', 24, true);
	setScrollFactor('walk', 1, 1);
	setProperty('walk.antialiasing', true);
	setObjectOrder('walk', 10);

    makeLuaSprite('fore', 'nfbg/NF-Fore', -1000, 500);
    scaleObject('fore', 1, 1);
    setScrollFactor('fore', 1, 1);
    setProperty('fore.antialiasing', true);
    setObjectOrder('fore', 11);
    addLuaSprite('fore', true);

    setScrollFactor('gfGroup', 1, 1);
    setProperty('gfGroup.antialiasing', true);
    setObjectOrder('gfGroup', 6);

    setScrollFactor('dadGroup', 1, 1);
    setProperty('dadGroup.antialiasing', true);
    setObjectOrder('dadGroup', 7);

    setScrollFactor('boyfriendGroup', 1, 1);
    setProperty('boyfriendGroup.antialiasing', false);
    setObjectOrder('boyfriendGroup', 8);

    makeLuaSprite("ambience", "ambience/nf", -150, -10)
    setObjectCamera("ambience", "other")
    setProperty("ambience.alpha", 0.3)
    scaleObject("ambience", 1.5, 1.3)
    setBlendMode("ambience", "overlay")
    addLuaSprite("ambience", true)
end

function onBeatHit()
    objectPlayAnimation('dnpc', 'idle', true);
end
