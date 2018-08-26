require 'pry'

class Robot

  attr_accessor :name

  def initialize

    @name = (Array('A'..'Z').sample(2) + Array(0..9).sample(3)).join

  end


  def reset

    @name = (Array('A'..'Z').sample(2) + Array(0..9).sample(3)).join

  end

end
