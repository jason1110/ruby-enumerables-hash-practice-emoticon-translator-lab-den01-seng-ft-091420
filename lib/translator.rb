require 'yaml'
require 'pry'

def load_library(path)
get_file = YAML.load_file(path)
new_hash = {}
get_file.each do |key, value|
    new_hash[key][:english] = value[0]
  end
new_hash
binding.pry
end
#def get_japanese_emoticon(load_library,eng_emote)
  # code goes here
#end

#def get_english_meaning(load_library,jemote)
  # code goes here
#end
