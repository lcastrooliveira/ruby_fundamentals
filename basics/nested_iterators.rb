teams = {
  "Houston Astros" => {
    "first base" => "Chris Carter",
    "second base" => "Jose Altuve",
    "shortstop" => "Carlos Correa"
  },
  "Texas Rangers" => {
    "first base" => "Prince Fielder",
    "second base" => "R. Odor",
    "shortstop" => "Elvis Andrus"
  }
}

#traditional and noob way
teams.each do |i|
  i.each do |j|
      #p j
  end
end

#what you'll really do in a real life project
teams.each do |team,players|
  puts team
  players.each do |position,player|
    p "#{player} starts at #{position}"
  end
end

#?!
teams.each do |team,players,position,player|
  p "position #{position} #{player}"
end
