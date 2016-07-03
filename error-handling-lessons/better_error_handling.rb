begin
  puts nil + 10
rescue ZeroDivisionError => e
  puts "Error occured: #{e}"
rescue NoMethodError => e
  puts "wow"
rescue StandardError => e
  puts "Error occured: #{e}"
end
