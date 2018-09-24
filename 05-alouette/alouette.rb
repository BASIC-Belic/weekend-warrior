class Alouette

  LES_PARTIES = ["la tête","le bec!", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]


  def self.lines_for_verse(verse_num)

    played_lines = []
    # i = 0
    (verse_num + 1).times do |i|
      played_lines << "Et #{LES_PARTIES[i]}!"
      i += 1
    end


    return played_lines
  end

  def self.verse(verse_num)
  end

  def self.sing

    first_line = "Alouette, gentille alouette,\nAlouette, je te plumerai. \n\n"
    second_line = "Je te plumerai"
    last_line = "A-a-a-ah\n\n"
  end

end
