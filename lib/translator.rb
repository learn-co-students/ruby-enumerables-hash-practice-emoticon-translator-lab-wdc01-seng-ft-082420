# require modules here
require 'pry'
require 'yaml'

def load_library(file)
  # code goes here
  
  emoticons_file = YAML.load_file(file)
  organized_emoticons_file = {}
  
  emoticons_file.map do |key, value| 
    
    organized_emoticons_file[key] = {}
    organized_emoticons_file[key][:english] = emoticons_file[key][0]
    organized_emoticons_file[key][:japanese] = emoticons_file[key][1]
    
  end
    
  return organized_emoticons_file
  
end


def emoticon_exist(file, emoticon)
  
 organized_library = load_library(file)
 exist = false
 
 organized_library.each do |key, value|
   
   if organized_library[key][:english] == emoticon || organized_library[key][:japanese] == emoticon
     
     exist = true
     
   end
   
 end
  
  return exist
  
end


def get_japanese_emoticon(file, emoticon)
  # code goes here
  
  library = load_library(file)
  
  if emoticon_exist(file, emoticon) == false
    
    sorry_message = "Sorry, that emoticon was not found"
    return sorry_message
    
  end
  
  library.each do |key, value|
  
    if library[key][:english] == emoticon
      return library[key][:japanese]
    end
    
  end
  
end

def get_english_meaning(file, japanese_emoticon)
  # code goes here
  
  library = load_library(file)
  
  if emoticon_exist(file, japanese_emoticon) == false
    
    sorry_message = "Sorry, that emoticon was not found"
    return sorry_message
    
  end
  
  library.each do |key, value|
    
    if library[key][:japanese] == japanese_emoticon
      
      return key
      
    end
    
  end
  
end



