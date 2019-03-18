require 'json'
require 'net/http'
require 'what_should_i_eat/printing.rb'

module WhatShouldIEat
  class Error < StandardError; end

  result = Net::HTTP.get('www.edamam.com', '/search?type=Feeds')
  
  recipes = JSON.parse(result)

  you_should_eat = recipes.first['items'].first['label']

  Printing.print you_should_eat
end
