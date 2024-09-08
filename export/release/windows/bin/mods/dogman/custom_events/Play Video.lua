--Created by RamenDominoes
--Credit appreciated, but not necessary thanks <3


function onEvent(name,value1,value2)

	if name == 'Play Video' then
	
		makeVideoSprite('tag','value1',0,0,'hud',0)
		--setScrollFactor("tag", 0.0, 0.0)
		setObjectOrder('tag_video', 0)
		setProperty('tag_video.alpha', 1)
end
end
	
