require "pry"
require "yaml"
emote = YAML.load_file('./lib/emoticons.yml')
	

	

	def load_library(file_path)
	  emote = YAML.load_file(file_path)
	  working_hash = {}
	  emote.each do |(key, emote_array)|
	  emote_array.each do |x|
	    working_hash[key] = {}
	    working_hash[key][:english] = emote_array[0]
	    working_hash[key][:japanese] = emote_array[1]
	   end
	  end 
  	working_hash
	end
	

	def get_japanese_emoticon(file_path, english_emoticon)
	  working_hash = load_library(file_path)
	  japanese_emoticon = "Sorry, that emoticon was not found"
	  working_hash.each do |(key, emote_hash)|
	    emote_hash.each do |(language_key, emote)|
	    if emote == english_emoticon
	      japanese_emoticon = working_hash[key][:japanese]
	    end
	  end
	  end
	  japanese_emoticon
	end
	

	def get_english_meaning(file_path, emoticon)
	# code goes here
	  working_hash = load_library(file_path)
	  meaning = "Sorry, that emoticon was not found"
	  working_hash.each do |(key, emote_hash)|
	    emote_hash.each do |(language_key, emote)|
    	if emote == emoticon 
	    meaning = key
	    end
  	end
	end
	meaning
	end
