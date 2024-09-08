function onCreatePost()
    makeLuaSprite('whitebg', '', 0, 0)
    setScrollFactor('whitebg', 0, 0)
    makeGraphic('whitebg', 3840, 2160, '000000') -- Create a black background
    addLuaSprite('whitebg', false)
    setProperty('whitebg.alpha', 0) -- Start invisible
    screenCenter('whitebg', 'xy')
end

-- Central function to change colors
function setAllToColor(color, duration)
    -- Add any objects you want to turn black/white
    local objects = {
        'whitebg', 'boyfriend', 'dad', 'gf', 'fore', 'Sign', 
        'peteyrunleg', 'dogrunleg', 'chiefrunleg'
        -- Add other specific sprite or graphic names here
    }

    -- Loop through objects and apply the color tween
    for _, obj in ipairs(objects) do
        doTweenColor('tween_' .. obj, obj, color, duration, 'linear')
    end
end

function onEvent(n, v1, v2)
    if n == 'badapplebutallblack' then
        if string.lower(v1) == 'a' then
            doTweenAlpha('applebadxd69', 'whitebg', 1, v2, 'linear') -- Fade in black background
            setAllToColor('000000', v2) -- Turn everything black
        elseif string.lower(v1) == 'b' then
            doTweenAlpha('applebadxd', 'whitebg', 0, v2, 'linear') -- Fade out black background
            setAllToColor('FFFFFF', v2) -- Turn everything white
        end
    end
end
