def words(string)

  words = string.split(" ")
  word_hashes = {}

  words.each do |word|

    if word_hashes.key?("#{word}")
      word_hashes["#{word}"] += 1
    else
      # word_hashes.merge!(word: 1)
      word_hashes.store("#{word}", 1)
    end
  end

  return word_hashes
end
