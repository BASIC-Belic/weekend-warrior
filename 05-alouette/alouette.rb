require 'pry'

class Alouette

  LES_PARTIES = ["la tête","le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]


  def self.lines_for_verse(verse_num)

    played_lines = []
    (verse_num + 1).times do |i|
      played_lines << "Et #{LES_PARTIES[i]}!"
      i += 1
    end

    return played_lines.reverse!
  end

  #helper method to generate middle lines
  def self.middle_lines(index)
    return self.lines_for_verse(index).reduce("") do |statement, partie|
      statement + partie + "\n" + partie + "\n"
    end
  end

  def self.verse(verse_num)

    last_line = "Alouette!\nAlouette!\nA-a-a-ah"
    first_line = ("Je te plumerai " + LES_PARTIES[verse_num] + "." + "\n") * 2
    return first_line + self.middle_lines(verse_num) + last_line
  end

  def self.sing

    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai.\n\n"

    verse_num = 0
    song = []

    while verse_num < LES_PARTIES.length do
      song << "#{self.verse(verse_num)}\n"
      verse_num += 1
    end

    song = song.reduce(refrain) { |statement, verse| statement + verse + "\n" + refrain }
    return  song[0...-2]
  end

end
