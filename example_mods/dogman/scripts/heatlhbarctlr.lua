function onCreate()
    makeLuaText('tessattxt', 'Press Z to Heal', width, 950, 650+(23*0));
    setTextAlignment('tessattxt', 'center');
    setTextFont('tessattxt', 'vcr.ttf');
    addLuaText('tessattxt', true);
    setTextSize('tessattxt', 50);
    setObjectOrder('tessattxt', 5);
    setObjectCamera('tessattxt', 'hud');

    close(true);
end
