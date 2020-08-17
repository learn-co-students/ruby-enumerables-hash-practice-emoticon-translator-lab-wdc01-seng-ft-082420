require 'yaml'
require 'pry'
# require modules here

def load_library(file_path)
 emoticon_hash= YAML.load_file(file_path)
    binding.pry
end

def get_japanese_emoticon(emoticon_hash)
  # code goes here
end

def get_english_meaning
  # code goes here
end