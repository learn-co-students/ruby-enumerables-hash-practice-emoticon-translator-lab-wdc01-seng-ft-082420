# require modules here
require "yaml"
require "pry"

def load_library(lib)
  # code goes here
  emotos = YAML.load_file(lib)
  #superloop through NDS emotos and change each ary to a hash
  emotos.each do |key, ary|
    emotos[key] = { :english => ary[0], :japanese => ary[1] }
  end
end

def get_japanese_emoticon(lib, str_w)
  # code goes here
  load_library(lib).each do |emo, dic_emo|
    if str_w == dic_emo[:english]
      return dic_emo[:japanese]
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(lib ,str_j)
  # code goes here
  load_library(lib).each do |emo, dic_emo|
    if str_j == dic_emo[:japanese]
      return emo
    end
  end
  return "Sorry, that emoticon was not found"
end