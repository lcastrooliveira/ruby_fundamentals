require 'rubygems'
require 'dish'

hash = {
  movie: "Star Wars",
  actors: [
    {age: 22, name: "Luke"},
    {age: 35, name: "Han"},
    {age: 400, name: "Yoda"}
  ],
  favorite: true
}

p media = Dish(hash)
#This gem allows you to use hashes as a an object (very similar to Retrofit in Android)
p media.movie
p media.actors.length
p media.actors[0].name
p media.actors[2].age
p media.actors.last.age
p media.favorite?
