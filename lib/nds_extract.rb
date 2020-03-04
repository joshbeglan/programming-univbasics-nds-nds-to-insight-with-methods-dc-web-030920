$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  i = 0
  
  while i < director_data.length
    movies = director_data[:movies]
    j = 0
    
    while j < movies.length
      gross = movies[j][:worldwide_gross]
      total += gross

      j += 1
    end
    
    return total
    i += 1
  end
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  i = 0
  
  while i < nds.length
    director = nds[i]
    totaled = gross_for_director(director)
    result = director[name]
  
    i += 1
  end
end
