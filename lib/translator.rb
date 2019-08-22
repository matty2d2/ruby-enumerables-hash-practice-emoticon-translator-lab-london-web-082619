# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  emot_hash = Hash.new

  emot_hash["get_emoticon"] = Hash.new
  emot_hash["get_meaning"] = Hash.new

  emoticons.each do |english_word, emoticon_set|
    emot_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    emot_hash["get_meaning"][emoticon_set.last] = english_word
  end
  emoticon_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end