require 'yaml'
require 'pry'

def load_library(path)
get_file = YAML.load_file(path)
binding.pry
new_hash = {}
  get_file.each do |key,value|
    new_hash[key.to_sym][:english] = value[0]
    new_hash[key.to_sym][:japanese] = value[1]
binding.pry    
  end
new_hash
end

#def get_japanese_emoticon(load_library,eng_emote)
  # code goes here
#end

#def get_english_meaning(load_library,jemote)
  # code goes here
#end


load_library(path)