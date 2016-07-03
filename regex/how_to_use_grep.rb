arr = ['hey.rb','there.rb','index.html']
#with select
p arr.select { |x| x =~ /\.rb/  }.map {|x| x[0..-4]}
#with grep
p arr.grep(/(.*)\.rb/) { $1 }
