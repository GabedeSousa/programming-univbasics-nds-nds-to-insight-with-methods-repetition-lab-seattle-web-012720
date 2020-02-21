$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  directors_index = 0
  while directors_index < source.length do 
    director = source[directors_index]
    result[director[:name]] = gross_for_director(director)
    directors_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end


def list_of_directors(source)
  # Write this implementation
  novo_array = []
  contagem = 0

  while contagem < source.length do 
    parças = source[contagem][:name]
    novo_array << parças
    contagem += 1
  end
  novo_array
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  director_earning_hash = directors_totals(source)
   director_names = list_of_directors(source)
   i = 0
   total = 0

    while i < director_names.length do
     dir_name = director_names[i]
     total += director_earning_hash[dir_name]
     i += 1
 end
 total
end




