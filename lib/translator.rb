# require modules here
require 'yaml'
require 'pry'
def load_library(file_path)
  # code goes here
  old_data = YAML.load_file(file_path)
  new_hash = {}
  old_data.map do |emotion, faces|
    
    new_hash[emotion] = {:english => faces[0], :japanese => faces[1]}
  end
new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)
  old_data = YAML.load_file(file_path)
  emoticon_pair = old_data.values
  emoticon_pair.map do |pair|
  if pair[0] == emoticon
    return pair[1]
   end
 end
   p "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  load_library(file_path)
  old_data = YAML.load_file(file_path)
  old_data.map do |meaning, pair|
    if pair[1] == emoticon
      return meaning
  end
end
 p "Sorry, that emoticon was not found"
end