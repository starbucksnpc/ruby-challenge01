#  Name:     Sol Nam
#  Program:  Full Stack Web Development 
#  Course:   WEBD-3011 Agile Full Stack Web Development 
#  Created:  2024-05-16
#  Updated:  2024-05-16

# 4) Using data from the city's open data set figure out how many of our trees may die now that the Emerald Ash Borer has been found here. 
#    In other words, how many Ash trees do we have in the city? 

require 'net/http'
require 'json'
require 'pp'

# URL for the tree dataset
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'

# Function to fetch and parse JSON data
def fetch_and_parse_data(url)
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

# Fetch and parse the tree data
tree_data = fetch_and_parse_data(url)

# Counter for Ash trees
ash_tree_count = 0

# Iterate over each tree in the dataset
tree_data.each do |tree|
  # Check if the common_name of the tree contains "Ash"
  if tree['common_name']&.downcase&.include?('ash')
    ash_tree_count += 1
  end
end

# Output the total number of Ash trees
puts "Total number of Ash trees: #{ash_tree_count}"
