
def load_library(emoticons)
require "yaml"
require 'pry'

emot_file = YAML.load_file(emoticons)
emot_file_with_country = {}  
 
 emot_file.each do |key, value|
   emot_file_with_country[key] = {}
   
   emot_file_with_country[key][:english] = value[0]
   emot_file_with_country[key][:japanese] = value[1]
  end  
 emot_file_with_country
end

def get_english_meaning(emoticons, japanese_emoticon)
  emot_hash = load_library(emoticons)
  
  found_emoticon = emot_hash.keys.find do |key, value|
    
    emot_hash[key][:japanese] == japanese_emoticon
  end 
  
  if found_emoticon 
    found_emoticon
  else
    "Sorry, that emoticon was not found"
  end  
end


#def get_japanese_emoticon(emoticons, english_emoticon)
  #emot_hash = load_library(emoticons)
  
    #emot_hash.each do |key, value|
      #if
        #emot_hash[key][:english] == english_emoticon
        #japanese_emot = emot_hash[key][:japanese]
      #return japanese_emot
      #elsif
      #emot_hash[key][:english] != english_emoticon
      #return "Sorry, that emoticon was not found"
      #end
    #end  
#end

def get_japanese_emoticon(emoticons, english_emoticon)
  emot_hash = load_library(emoticons)
  japanese_emot = ""
  found_emoticon = emot_hash.keys.find do |key, value|
    
        if
        emot_hash[key][:english] == english_emoticon
        japanese_emot = emot_hash[key][:japanese]
        
        end 
  end
  if found_emoticon 
    japanese_emot
  else
    "Sorry, that emoticon was not found"
  end  
end


