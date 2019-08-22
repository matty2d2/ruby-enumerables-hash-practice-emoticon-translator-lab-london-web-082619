# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  emot_hash = Hash.new
  emot_hash["get_emoticon"] = Hash.new
  emot_hash["get_meaning"] = Hash.new

  emoticons.each do |eng_word, emot_set|
    emot_hash["get_emoticon"][emot_set.first] = emot_set.last
    emot_hash["get_meaning"][emot_set.last] = eng_word
  end
  emot_hash
end

def get_japanese_emoticon
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end

def get_english_meaning
  # code goes here
end