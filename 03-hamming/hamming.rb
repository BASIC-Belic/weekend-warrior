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

# #another way to do the loop 
# #.zip Converts any arguments to arrays, then merges elements of self with corresponding elements from each argument.
# #can .zip together multiple arrays
# string1.zip(string2).each do |letter1, letter2|
#   if letter1 != letter2
#     counter+=1
#   end
# end
