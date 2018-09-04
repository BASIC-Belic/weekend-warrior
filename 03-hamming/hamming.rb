class Hamming

  def self.compute(string1, string2)
    if string1.length != string2.length
      raise ArgumentError.new('Two strands must be equi length to compare')
    end

    counter = 0

    string1.length.times.with_index do |_, i|

      if string1[i] != string2[i]
        counter += 1
      end
    end

    return counter
  end

end
