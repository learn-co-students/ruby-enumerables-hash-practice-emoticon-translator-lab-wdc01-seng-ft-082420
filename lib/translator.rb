# require modules here
require "yaml"

def load_library(yml_file)
  emote_library = {}
  yaml_loaded = YAML.load_file(yml_file)
  
  yaml_loaded.each do |emotion, emotes|
    
    if !emote_library.key?(emotion)
      emote_library[emotion] = {:english => nil, :japanese => nil}
    end
    
    emote_library[emotion][:english] = emotes[0]
    emote_library[emotion][:japanese] = emotes[1]
    
  end
  emote_library
end

def get_japanese_emoticon(yml_file, en_emote)
  
  load_library(yml_file).each do |emotion, emotes|
    
    if emotes[:english] == en_emote
      return emotes[:japanese]
    end
    
  end
  
  "Sorry, that emoticon was not found"
  
end

def get_english_meaning(yml_file, jp_emote)
  #this is basically the same as get_japanese_emoticon but instead of returning the other emote, we're gonna return the name of the category
  
  load_library(yml_file).each do |emotion, emotes|
    if emotes[:japanese] == jp_emote
      return emotion.to_s
    end
  end
  
  "Sorry, that emoticon was not found"
end