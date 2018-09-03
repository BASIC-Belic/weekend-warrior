require 'pry'

# ALPHA_CHARS = [*"A".."Z"]
# DIGIT_CHARS = [*0..9]

#2.times do ALPHA_CHARS.sample(1) --> so you can have letters repeat
#3.times doDIGIT_CHARS.sample(1)


class Robot

  attr_accessor :name

  def initialize

    # @name = (Array('A'..'Z').sample(2) + Array(0..9).sample(3)).join
    middle_man

  end

  def reset

    # @name = (Array('A'..'Z').sample(2) + Array(0..9).sample(3)).join
    middle_man

  end

  private

  def middle_man

      @name = (Array('A'..'Z').sample(2) + Array(0..9).sample(3)).join
  end

end

#OR ADD middle man that does all the work, and call middle man method in initialize and reset
