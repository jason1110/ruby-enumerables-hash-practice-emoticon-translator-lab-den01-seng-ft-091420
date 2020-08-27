require 'yaml'
require 'pry'

def load_library(file_path)
get_file = YAML.load_file(file_path)
new_hash = {}
  get_file.each do |key, value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
  end
new_hash
end
def get_japanese_emoticon(file_path,eng_emote)
japanese_emoticon = "sorry dont know what that means"
  load_library(file_path).each_value do |english, japanese|
    if english == japanese
     japanese_emoticon = japanese
    end
  end
japanese_emoticon
end

def get_english_meaning(file_path,j_emote)
  english_meaning = "Sorry, that emoticon was not found"
    load_library(file_path).each do |meaning, emote|
     if j_emote == emote[:japanese]
       english_meaning = meaning.to_s
     end
    end
english_meaning
end