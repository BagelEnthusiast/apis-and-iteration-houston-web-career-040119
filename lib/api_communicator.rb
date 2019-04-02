require 'rest-client'
require 'json'
require 'pry'

response_string = RestClient.get('http://www.swapi.co/api/people/')
response_hash = JSON.parse(response_string)

# new_hash={}

# response_hash.each do |x,y|
#   response_hash["results"].each do |a|
#     a.each do |k,l|
#       if k == "name" 
#         new_hash[k]=l
#       end
#     end
#   end
# end

# binding.pry

def get_character_movies_from_api(character_name)
  #make the web request
  response_string = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(response_string)

characterFilms = []
filmHashes = []

response_hash["results"].each do |value|
  characterFilms = value["films"] 
  if 
    value.has_value?(character_name)
  end
end

characterFilms.each do |data|

   titles = RestClient.get(data)
   filmHashes = JSON.parse(titles)["title"]
 puts filmHashes
   end 
#binding.pry
=begin
characterFilms.each do |films|
  counter=0

  filmHashes << RestClient.get(films[counter])
  counter +=1
end
filmHashes
=end
 
#binding.pry

# new_hash={}

# response_hash.each do |x,y|
#   response_hash["results"].each do |a|
#     binding.pry
#   end
# end


  
  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.
end

# get_character_movies_from_api(character_name)

def print_movies(films)
  # some iteration magic and puts out the movies in a nice list
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  #binding.pry
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
