class Hamming

  def self.compute(array1, array2)
    if array1.length != array2.length
      raise ArgumentError.new('Two strands must be equi length to compare')
    end

    counter = 0

    array1.length.times.with_index do |_, i|

      if array1[i] != array2[i]
        counter += 1
      end
    end

    return counter
  end

end
