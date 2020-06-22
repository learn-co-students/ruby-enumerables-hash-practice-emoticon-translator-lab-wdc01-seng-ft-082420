require 'yaml' 
# 1 happy: - ":)" - "(＾ｖ＾)"
# 2 "happy" (key) => [ ":)", (＾ｖ＾)" ] (value)
# 3 {'happy' => (value [0]{:english => ":)",:value [1]japanese => "(＾ｖ＾)"}}

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_hash = {}
  emoticons.each do |key,value|
     new_hash[key] = {} #emotion 
     new_hash[key][:english] = value[0] 
     new_hash[key][:japanese] = value[1]
   end
   new_hash
end

def get_japanese_emoticon (file_path, emoticon)
 library = load_library(file_path)
 emoticon = library.keys.find do |key|
   library[key][:english] == emoticon
 end 
 emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
end

def get_english_meaning (file_path, emoticon)
   library = load_library(file_path)
 emoticon = library.keys.find do |key|
   library[key][:japanese] == emoticon
 end 
 emoticon ? emoticon: "Sorry, that emoticon was not found"
end