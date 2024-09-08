function onCreate()
    makeLuaText('lyric', '', screenWidth, 0, screenHeight / 10)
    setTextSize('lyric', 40)
    setTextAlignment('lyric', 'center')
    setObjectCamera('lyric', 'other')
    addLuaText('lyric')
end

function onEvent(name, value1, value2)
    if name == 'lyrics' then
        local color = 'ffffff'
        local size = 40

        if value2 ~= '' then
            local colorMatch, sizeMatch = value2:match("([^,]+),([^,]+)")
            if colorMatch and sizeMatch then
                color = colorMatch
                size = tonumber(sizeMatch:gsub(" ", ""))
            end
        end

        -- Debugging information
        print('Event details:', name, value1, value2)
        print('Parsed color:', color, 'Parsed size:', size)

        if size then
            setProperty('lyric.y', screenHeight / 2 - size)
            setTextSize('lyric', size)
        else
            print('Error: Invalid size value')
        end

        setTextString('lyric', value1)

        if color and #color == 6 then
            setTextColor('lyric', color)
        else
            print('Error: Invalid color value')
        end
    end
end
