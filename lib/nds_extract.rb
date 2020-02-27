$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  nds = director_data
total = 0
index = 0
while index < nds[:movies].count do 
total += nds[:movies][index][:worldwide_gross]

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
			director_index = 0
			
			while director_index < nds.count do
			movie_index = 0
			gross_total = 0
			while movie_index < nds[director_index][:movies].length do
			gross_total += nds[director_index][:movies][movie_index][:worldwide_grosses]
			movie_index += 1
			end
			result[nds[director_index][:name]] = gross_total
			director_index += 1
			end
			result
end
