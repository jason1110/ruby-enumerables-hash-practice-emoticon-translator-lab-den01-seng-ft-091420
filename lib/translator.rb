require 'yaml'
require 'pry'

def load_library
get_file = YAML.load_file('lib/emoticons.yml')
v1 = {}
v2 = {}
  make_hash = get_file.each_with_object({}) do |(key,value), new_hash|
    v1 = value[0]
    v2 =  value[1]
    new_hash[key.to_sym] = {:english => v1, :japanese => v2}
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