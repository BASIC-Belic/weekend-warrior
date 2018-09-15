#
# Write a program that given a phrase can count the occurrences of each word in that phrase. The program has special handling rules for whitespace characters like new lines and tabs, as well as handling punctuation. Read the test matchers carefully to uncover the rules.
#
# For example, calling word_count("everybody loves tacos right?") should return a hash that looks like this:
#
# {
#   "everybody" => 1,
#   "loves" => 1,
#   "tacos" => 1,
#   "right?" => 1
# }


def words(string)

  words = string.split(" ")
  word_hashes = {}

  words.each do |word|

    temp_word_hash = {}

    if word_hashes.key?("#{word}")
      word_hashes["#{word}"] += 1
    else
      # word_hashes.merge!(word: 1)
      word_hashes.store("#{word}", 1)
    end
  end

  return word_hashes
end
