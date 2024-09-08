-- Event notes hooks
function onEvent(name, value1, value2)
    if name == "gfvis" then
        local var invis = tonumber(value1)
        local var vis = tonumber(value2)
    end
        if invis == 1 then
            setProperty('gf.visible', false)
        end

        if vis == 1 then
            setProperty('gf.visible', true)
        end
end
