#  Name:     Sol Nam
#  Program:  Full Stack Web Development 
#  Course:   WEBD-3011 Agile Full Stack Web Development 
#  Created:  2024-05-16
#  Updated:  2024-05-16

# 3) Write a script that uses the JSON provided by the dog.ceo API to print out a nicely formatted list of dog breeds and sub-breeds. 

require 'net/http'
require 'json'
require 'pp' # pp stands for pretty print.

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)

dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data

breeds = dog_breeds['message']
breeds.each do |breed, sub_breeds|
  puts "* #{breed.capitalize}"
  sub_breeds.each do |sub_breed|
    puts "  * #{sub_breed.capitalize}"
  end
end