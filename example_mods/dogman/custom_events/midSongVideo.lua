-- Function to handle events, specifically for midSongVideo
function onEvent(name, v1, v2)
    -- Check if the event is midSongVideo
    if name == 'midSongVideo' then
        -- If v1 is true, start the cutscene
        if v1 == 'true' then
            setProperty('inCutscene', true)
            -- Start the video if v2 is provided
            if v2 ~= nil and v2 ~= '' then
                startVideo(v2)
            end
        else
            -- Otherwise, end the cutscene
            setProperty('inCutscene', false)
        end
    end
end

-- Function to handle game updates (every frame)
function onUpdate()
    -- Check if the game is in a cutscene
    if getProperty('inCutscene') then
        -- Prevent space and enter keys from skipping the cutscene
        if keyJustPressed('space') or keyJustPressed('enter') then
            return Function_Stop
        end
    end
end

-- Function to override the pause functionality during cutscenes
function onPause()
    -- Check if the game is in a cutscene
    if getProperty('inCutscene') then
        -- Prevent pausing during cutscenes
        return Function_Stop
    end
    return Function_Continue
end

-- Function to reset the inCutscene property after the video ends
function onEndVideo(name)
    -- Reset the inCutscene property to false after the video ends
    setProperty('inCutscene', false)
end
