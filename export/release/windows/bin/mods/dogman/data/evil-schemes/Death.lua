function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'dogmanbf-dead'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_dogman_bf'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverD'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverDEnd'); --put in mods/music/
end
