require 'pry'
require 'yaml'

def load_library(file_location)
  dictionary = YAML.load_file(file_location)
  
  ej_dictionary = dictionary.each_with_object({}) do |(key, value), a|
    
    binding.pry
  end

  
  binding.pry

  
  
  
  
end

# def get_japanese_emoticon
#   # code goes here
# end

# def get_english_meaning
#   # code goes here
# end