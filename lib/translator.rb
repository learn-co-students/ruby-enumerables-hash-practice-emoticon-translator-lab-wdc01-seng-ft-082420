require 'pry'
require 'yaml'

def load_library(file_path)
    emoticons = YAML.load_file(file_path)
    new_hash = {}
    emoticons.each do |key, value|
      new_hash[key] = {} #sets the key (the emotion) as an empty hash
      new_hash[key][:english] = value[0]
      new_hash[key][:japanese] = value[1]
  end
  new_hash
end


def get_japanese_emoticon(file_path, english_emoticon)
  emoticon = YAML.load_file('./lib/emoticons.yml')
 load_library(file_path)
emoticon_pair_arrays = emoticon.values
 emoticon_pair_arrays.each do |pair_array|
   if pair_array[0] == english_emoticon
     return pair_array[1]
   end
end
return "Sorry, that emoticon was not found"
end



def get_english_meaning(file_path, japanese_emoticon)
  emoticon = YAML.load_file('./lib/emoticons.yml')
 load_library(file_path)

  emoticon.each do |key, emoticon_pairs|
    if emoticon_pairs[1] == japanese_emoticon
      return key
    end
end
  return "Sorry, that emoticon was not found"
end
