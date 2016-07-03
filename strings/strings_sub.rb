str = "    The quick brown fox jumped over the quick dog       "

#changes only the first occurrency
p str.sub "quick","slow"

#changes everything
p str.gsub "quick","slow"

#Strip method -> just like trim()
p str.strip

#split -> converts each word into an array
p str.split.size
#splits for each single letter, including the spaces
p str.split(//).size
