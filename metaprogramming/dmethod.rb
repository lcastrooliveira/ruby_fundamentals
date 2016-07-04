#define_method - creates the method at run time - respond_to works out of the box
#method_missing - does not trigger until the whole method call has gone through the cicle in ruby
class Author
  genres = %w(fiction coding history)
  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end

  def test_args arg1, arg2
    puts "nome #{arg1}"
    puts "sobrenome #{arg2}"
  end

end

author = Author.new
author.coding_details("Cal newport")
author.fiction_details("Ayn Rand")
author.history_details("Lucas castro")
author.test_args 12, "castro"
p author.respond_to?(:coding_details)
