function onCreatePost()
	setProperty('scoreTxt.visible', false)
   	setProperty('timeBarBG.visible', true)
    	setProperty('timeBar.visible', true)
    	setProperty('timeTxt.visible', true)

	makeLuaText('score','',0,10,620)
	setTextSize('score', 20)
	addLuaText('score')

	makeLuaText('miss','',0,10,getProperty('healthBar.y'))
	setTextSize('miss', 20)
	addLuaText('miss')

	makeLuaText('rating','',0,10,670)
	setTextSize('rating', 20)
	addLuaText('rating')

	if downscroll then
	setProperty('score.y', 20)
	setProperty('rating.y', 60)
	setProperty('miss.y', 40)
end
end

	function onUpdate(elasped)
	if hits < 1 and misses < 1 then
	setTextString('score','Tickets: 0')
	setTextString('rating','Rating:')
	setTextString('miss','Misses: 0')
else
	setTextString('score','Tickets: '..score)
	setTextString('rating','Rating: '..ratingName)
	setTextString('miss','Misses: '..misses)
end
end