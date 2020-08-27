require 'yaml'
require 'pry'

def load_library(file)
get_file = YAML.load_file(file)
new_hash = {}
  make_hash = get_file.each do |key,value|
    new_hash[key.to_sym][:english] = value[0]
    new_hash[key.to_sym][:japanese] = value[1]
  end
make_hash
binding.pry
end

def get_japanese_emoticon(load_library,eng_emote)
  # code goes here
end

def get_english_meaning(load_library,jemote)
  # code goes here
end

load_library