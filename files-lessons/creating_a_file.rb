#Writing files
File.open("files-lessons/teams.txt",'w+') {|f| f.write("Twins, Astros, Mets, Yankees")}
# r - plain reading
# a - appending to a file
# w - just writing to a files-lessons
# w+ - reading and writing
# a+ - open file for reading and appending
# r+ - open a file for updating, both reading and writing
file_to_save = File.new("files-lessons/teams.txt",'w+')
file_to_save.puts("A's,Diamonbacks,Mariners, Marlins")
file_to_save.close
#Reading files
teams_one = File.read("files-lessons/teams.txt")
other_teams = File.read("files-lessons/other_teams.txt")

teams_master = teams_one.split(', ') + other_teams.split(', ')
teams_master.each do |team|
  p team.upcase
end

#delete a file
#File.delete("files-lessons/teams.txt")
