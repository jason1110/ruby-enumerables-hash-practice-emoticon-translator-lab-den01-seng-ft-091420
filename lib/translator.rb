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
#def get_japanese_emoticon(load_library,eng_emote)
  #Sorry, that emoticon was not found
#end

def get_english_meaning(file_path,j_emote)
  english_meaning = ""
  load_library(file_path).map do |meaning, emote|
    if j_emote == emote[:japanese]
      english_meaning = meaning.to_s
    else
      english_meaning = "Sorry, your princess is in another castle"
    end
  end
  english_meaning
end