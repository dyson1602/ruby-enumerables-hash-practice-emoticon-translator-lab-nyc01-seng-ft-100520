require 'pry'
require 'yaml'

def load_library(file_location)
  dictionary = YAML.load_file(file_location)
  
  ej_dictionary = dictionary.each_with_object({}) do |(emotion, emoji), new_dictionary|
    if !new_dictionary[emotion]
      new_dictionary[emotion] = {:english => emoji[0], :japanese => emoji[1]}
    end
  end
  ej_dictionary
end

def get_japanese_emoticon(file_location, english_emoticon)
 
  dictionary = load_library(file_location)
  jkey = dictionary.key(english_emoticon)
  binding.pry
 
end

# def get_english_meaning
#   # code goes here
# end



# japanese_emoticon = dictionary[(dictionary.key[english_emoticon])][1]