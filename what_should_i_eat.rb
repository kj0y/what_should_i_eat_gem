require 'json'
require 'net/http'
 
result = Net::HTTP.get('www.edamam.com', '/search?type=Feeds')
 
recipes = JSON.parse(result)

you_should_eat = recipes.first['items'].first['label']

puts you_should_eat