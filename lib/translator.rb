# require modules here
require "yaml"

def load_library(file_path)
    emoticons_hash = YAML.load_file( file_path )

    emoticons_hash.each do |key, value|
        emoticons_hash[key] = {english: value[0], japanese: value[1]}
    end

    return emoticons_hash
end


def get_japanese_emoticon(file_path, text)
    # code goes here
  emoticons_hash = load_library(file_path)

  emoticons_hash.each do |key, value|
    if value[:english] == text
      return value[:japanese]
    end

  end
  return "Sorry, that emoticon was not found"

end

def get_english_meaning(file_path, text)
  # code goes here
  emoticons_hash = load_library(file_path)

  emoticons_hash.each do |key, value|
    if value[:japanese] == text
      return key
    end

  end
  return "Sorry, that emoticon was not found"

end