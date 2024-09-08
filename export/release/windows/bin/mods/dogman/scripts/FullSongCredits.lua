--[[
CREDITS :yippee:

omotashi: Made the script (https://twitter.com/omotashii)
legole0: Helped me make the base script when I started from scratch (https://twitter.com/legole0)
Piggyfriend1792: The OG Script from the Monday Night Monsterin' Mod that I used for making the thing show up (https://twitter.com/piggyfriend1792)
DEAD SKULLXX: Requested me to add Artist and Charter Credits 
--]]



local songdata = {

    ['Cheating Is Not Allowed'] = {
    'Cheating Is Not Allowed', -- Song Name [1]
    'Me', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Me, JOACK, TBOK', -- Artist [4]
    'Me', -- Charter [5]
    },

    ['Gaming'] = {
    'Gaming', -- Song Name [1]
    'TonyBallOhKnee', -- Composer [2]
    '3', --  Length for onscreen [3]
    'ADS, JOACK, Skwarix, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['17Tics'] = {
    '17Tics', -- Song Name [1]
    'Alex Does stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'ADS, JOACK, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Tutor'] = {
    'Now Playing: Tutor', -- Song Name [1]
    'DrizzleEcho', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['New Friend'] = {
    'Now Playing: New Friend', -- Song Name [1]
    'Tofu & Alex', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, JOACK, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Cat Chase'] = {
    'Now Playing: Cat Chase', -- Song Name [1]
    'box', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, JOACK, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Captured'] = {
    'Now Playing: Captured', -- Song Name [1]
    'Alex Does Stupid!?!, box', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, JOACK, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Evil Schemes'] = {
    'Now Playing: Evil Schemes', -- Song Name [1]
    'Box', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TBOK, JOACK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Goodbye Rat'] = {
    'Now Playing: Goodbye Rat', -- Song Name [1]
    'Box & ADS', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, JOACK, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Revenge'] = {
    'Now Playing: Revenge', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, JOACK, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Destroy'] = {
    'Now Playing: Destroy', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, JOACK, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Peteys Realization'] = {
    'Peteys Realization', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, JOACK, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Friends'] = {
    'Now Playing: Friends', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, JOACK, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Peteys Plan'] = {
    'Now Playing: Peteys Plan', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, JOACK, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Ka Blammers'] = {
    'Now Playing: Ka Blammers', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, JOACK, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Surgery Plan'] = {
    'Surgery Plan', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'ADS, JOACK, Skwarix, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Critter Scouts'] = {
    'Now Playing: Critter Scouts', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Critters Betrayal'] = {
    'Critters Betrayal', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },
    
    ['Robo'] = {
    'Now Playing: Robo', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Annoyed'] = {
    'Now Playing: Annoyed', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Skwarix', -- Charter [5]
    },

    ['Dog Bite'] = {
    'Now Playing: Dog Bite', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Not So Great Date'] = {
    'Not So Great Date', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Abusing Powers'] = {
    'Abusing Powers', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Evil Rules'] = {
    'Evil Rules', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'TonyBallOhKnee', -- Charter [5]
    },

    ['Fired'] = {
    'Now Playing: Fired', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['New Mayor'] = {
    'Now Playing: New Mayor', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Cloned'] = {
    'Now Playing: Cloned', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Abandonment'] = {
    'Now Playing: Abandonment', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, Tbok', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Search'] = {
    'Now Playing: Search', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Fish Bowl'] = {
    'Now Playing: Fish Bowl', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Supa Brains'] = {
    'Now Playing: Supa Brains', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Rock Paper Scissor'] = {
    'Rock Paper Scissor', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['New Friend Classic'] = {
    'New Friend Classic', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?! (OLD)', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['chasing classic'] = {
    'Chasing Classic', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?! (OLD)', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['captured classic'] = {
    'Captured Classic', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?! (OLD)', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['New Rat Classic'] = {
    'New Rat Classic', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?! (OLD)', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['goodbye rat classic'] = {
    'Goodbye Rat Classic', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?! (OLD)', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['enough classic'] = {
    'Enough Classic', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?! (OLD)', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['destroy classic'] = {
    'Destroy Classic', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?! (OLD)', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['realization classic'] = {
    'Realization Classic', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?! (OLD)', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['friend classic'] = {
    'Friends Classic', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?! (OLD)', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Underwhere'] = {
    'Now Playing: Underwhere', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Red Dress'] = {
    'Now Playing: Red Dress', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TBOK', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Bruh Disguise'] = {
    'Now Playing: Bruh Disguise', -- Song Name [1]
    'Alex Does Stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Grabify'] = {
    'Dog man hacker', -- Song Name [1]
    'box', -- Composer [2]
    '3', --  Length for onscreen [3]
    'DOG MAN HACER', -- Artist [4]
    'DOG MAN HACKER', -- Charter [5]
    },

    ['Kaboom'] = {
    'Now Playing: Kaboom', -- Song Name [1]
    'bbpanzu, Alex does stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Peteybot'] = {
    'Now Playing: Peteybot', -- Song Name [1]
    'bbpanzu, Alex does stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Prey'] = {
    'Now Playing: Prey', -- Song Name [1]
    'Armydillo, Alex does stupid!?!', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['trip o rama'] = {
    'Trip O Rama', -- Song Name [1]
    'box', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, skwarix', -- Artist [4]
    'P0LSKI', -- Charter [5]
    },

    ['Lore'] = {
    'Now Playing: Lore', -- Song Name [1]
    'kiwiquest, box', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Horrendous'] = {
    'Now Playing: Horrendous', -- Song Name [1]
    'DrizzleEcho', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!', -- Artist [4]
    'Alex Does Stupid!?!', -- Charter [5]
    },

    ['Let The Dogs Out'] = {
    'Let The Dogs Out', -- Song Name [1]
    'box', -- Composer [2]
    '3', --  Length for onscreen [3]
    'Alex Does Stupid!?!, TailsFangut2', -- Artist [4]
    'Tonyballohknee', -- Charter [5]
    },

-- Replace this data with your songs and the song composer. 
-- The song name in the [] MUST be the same song in the JSON file
-- The Next two are just string values, have fun :3
}

local offsetX = 10
local offsetY = 0
local objWidth = 500


function ifExists(table, valuecheck) -- This stupid function stops your game from throwing up errors when you play a main week song thats not in the Song Data Folder
    if table[valuecheck] then
        return true
    else
        return false
    end
end


function onCreatePost() -- This creates all the placeholder shit B) ((THIS PART OF THE SCRIPT WAS MADE BY PIGGY))
    luaDebugMode = true

    makeAnimatedLuaSprite('creditBox', 'songcred/creditpetey', -500, 0)
    scaleObject('creditBox', 0.8, 0.8)
    addAnimationByPrefix('creditBox', '', '', 24, true)
    setObjectCamera('creditBox', 'other')
    addLuaSprite('creditBox', true)

    makeLuaText('creditTitle', 'PlaceholderTitle', objWidth, offsetX - objWidth, offsetY+330)
    setTextSize('creditTitle', 25)
    setTextAlignment('creditTitle', 'left')
    setObjectCamera('creditTitle', 'other')
    addLuaText("creditTitle",true)

    makeLuaText('creditComposer', 'PlaceholderComposer', objWidth, offsetX - objWidth, offsetY+365)
    setTextSize('creditComposer', 25)
    setTextAlignment('creditComposer', 'left')
    setObjectCamera('creditComposer', 'other')
    addLuaText("creditComposer",true)

    makeLuaText('creditArtist', 'PlaceholderArtist', objWidth, offsetX - objWidth, offsetY+400)
    setTextSize('creditArtist', 20)
    setTextAlignment('creditArtist', 'left')
    setObjectCamera('creditArtist', 'other')
    addLuaText("creditArtist",true)

    makeLuaText('creditCharter', 'PlaceholderCharter', objWidth, offsetX - objWidth, offsetY+430)
    setTextSize('creditCharter', 25)
    setTextAlignment('creditCharter', 'left')
    setObjectCamera('creditCharter', 'other')
    addLuaText("creditCharter",true)

    -- If you dont NOT want the art and charter credits (or a mix of two), the value used in the old version is:
    -- offsetY+25 for creditTitle
    -- offsetY+80 for the other credit (be it Composer, Charting, or Art)
end


function onSongStart()

 songExists = ifExists(songdata, songName) -- Checks to see if song exists

 if songExists == true then
    local curSongTable = songdata[songName]
    setTextString('creditTitle', curSongTable[1]) -- Sets the actual things
    setTextString('creditComposer', "Musician: "..curSongTable[2])
    setTextString('creditArtist', "Art: "..curSongTable[4])
    setTextString('creditCharter', "Charting: "..curSongTable[5])

    --Tweens--
    doTweenX("creditBoxTween", "creditBox", getProperty("creditBox.x") + objWidth, 0.5, "expoOut")
    doTweenX("creditTitleTween", "creditTitle", getProperty("creditTitle.x") + objWidth, 0.5, "expoOut")
    doTweenX("creditArtistTween", "creditArtist", getProperty("creditArtist.x") + objWidth, 0.5, "expoOut")
    doTweenX("creditComposerTween", "creditComposer", getProperty("creditComposer.x") + objWidth, 0.5, "expoOut")
    doTweenX("creditCharterTween", "creditCharter", getProperty("creditCharter.x") + objWidth, 0.5, "expoOut")
    runTimer("creditDisplay",curSongTable[3],1)
 else

    

 end
end

function onTimerCompleted(timerName)

    if timerName == "creditDisplay" then
        doTweenX("creditBoxTween", "creditBox", getProperty("creditBox.x") + 1280, 0.5, "sineIn")
        doTweenX("creditTitleTween", "creditTitle", getProperty("creditTitle.x") + 1280, 0.5, "sineIn")
        doTweenX("creditComposerTween", "creditComposer", getProperty("creditComposer.x") + 1280, 0.5, "sineIn")
        doTweenX("creditArtistTween", "creditArtist", getProperty("creditArtist.x") + 1280, 0.5, "sineIn")
        doTweenX("creditCharterTween", "creditCharter", getProperty("creditCharter.x") + 1280, 0.5, "sineIn")
    end

end