# require modules here
require "yaml"
def load_library(file_path)
  load_library = YAML.load_file('lib/emoticons.yml')
  emoticon_hash = {}
  final_results= load_library.map do |key, value|
     key.tap do |key|
       if !emoticon_hash[key]
          emoticon_hash[key] = {:english => value[0], :japanese => value[1]}
      end
    end
  end
  emoticon_hash
end
file_path = YAML.load_file('lib/emoticons.yml')

load_library(file_path)

def get_japanese_emoticon(file_path, emoticon)
  data = load_library(file_path)
  emoticon_hash = "Sorry, that emoticon was not found"
  emoticon_result = data.select do |key, value|
    if emoticon == data[key][:english]
      emoticon_hash = data[key][:japanese]
      elsif emoticon == data[key][:english] = false
        emoticon_hash 
      end
    end
    emoticon_hash
  end
  file_path = '.lib/emoticons.yml'
 get_japanese_emoticon(file_path,":)")

def get_english_meaning(file_path, emoticon)
  # code goes here
  emoticon_hash = "Sorry, that emoticon was not found"
  data = load_library(file_path)
  emoticon_result = data.select do |name, value|
    if emoticon == data[name][:japanese]
    emoticon_hash = name
    elsif emoticon == data[name][:japanese] = false
    emoticon_hash
    end
  end
 emoticon_hash
end

get_english_meaning(file_path, "(ΘεΘ;)")

#☜(⌒▽⌒)☞
#ヽ(ｏ`皿′ｏ)ﾉ
#(ΘεΘ;)
#(゜.゜)
#(#^.^#)
#>゜))))彡
#(^0_0^)
#(￣ー￣)
#(＾ｖ＾)
#(*^3^)/~☆
#(Ｔ▽Ｔ)
#o_O
#(^_-)
