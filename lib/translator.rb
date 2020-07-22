# require modules here
require 'pry'
require "yaml"


def load_library(file_path)
 emoticons = YAML.load_file('./lib/emoticons.yml')
 
 emoticons.each do |key, value|
   emoticons[key] = {english: value[0], japanese: value[1]}
 end
end


def get_japanese_emoticon(file_path, english_emoticon)
  emoticons = YAML.load_file('./lib/emoticons.yml')
  load_library(file_path)
  emoticon_pair_arrays = emoticons.values
  
  emoticon_pair_arrays.each do |pair_array|
   
   if pair_array[0] == english_emoticon
     return pair_array[1]
    end
  end
 return "Sorry, that emoticon was not found"
end


def get_english_meaning(file_path, japanese_emoticon)
 emoticons = YAML.load_file('./lib/emoticons.yml')
  load_library(file_path)
  
 emoticons.each do |key, emoticon_pairs|
   
  if emoticon_pairs[1] == japanese_emoticon
   return key
 end
 
   
 end
  return "Sorry, that emoticon was not found"
end



