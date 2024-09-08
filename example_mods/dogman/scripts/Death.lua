function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dogman'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'BFdogmanloses'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'dogmanbfgame'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end
