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

    last_lines = "Alouette!\nAlouette!\nA-a-a-ah\n"

    first_lines =  verse_num.times.map do |index|
      "Je te plumerai " + LES_PARTIES[index] + "\n"
    end

    first_lines.map! do |line|
      line + line
    end

    verses = first_lines.each_with_index.map do |line, index|
      line + self.middle_lines(index) + last_lines
    end

    return verses.reduce("") do |statement, verse|
      statement + verse
    end

  end

  def self.sing

    first_line = "Alouette, gentille alouette,\nAlouette, je te plumerai. \n\n"

    #verse


  end

end
