$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  nds = director_data
total = 0
index = 0
while index < nds.count do 
total += nds[:movies][index][:worldwide_grosses]

index += 1
end
total 
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  index = 0
  while i < index.size do 
    director = nds[i]
    result[director[:name]] = gross_for_director
result
end
