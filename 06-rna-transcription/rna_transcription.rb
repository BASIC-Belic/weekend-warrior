
class Complement

  def self.of_dna(dna_strand)
    rna = []

    dna_strand.chars.each do |nucleotide|

      if nucleotide != 'G' && nucleotide != 'T' && nucleotide !='C' && nucleotide != 'A'
        raise ArgumentError.new("Not a valid DNA nucleotide.")
      end

      case nucleotide
      when 'G'
        rna << 'C'
      when 'C'
        rna << 'G'
      when 'T'
        rna << 'A'
      when 'A'
        rna << 'U'
      end
    end

    return rna.join("")
  end

  def self.of_rna(rna_strand)
    dna = []

    rna_strand.chars.each do |nucleotide|

      if nucleotide != 'G' && nucleotide != 'U' && nucleotide !='C' && nucleotide != 'A'
        raise ArgumentError.new("Not a valid DNA nucleotide.")
      end

      case nucleotide
      when 'C'
        dna << 'G'
      when 'G'
        dna << 'C'
      when 'A'
        dna << 'T'
      when 'U'
        dna << 'A'
      end
    end

    return dna.join("")
  end
end


#second way:
# class Complement
#
#   def self.of_dna(dna_strand)
#     nucleotides = dna_strand.split("")
#     nucleotides.map! do |nucleotide|
#
#       if nucleotide != 'G' && nucleotide != 'T' && nucleotide !='C' && nucleotide != 'A'
#         raise ArgumentError.new("Not a valid DNA nucleotide.")
#       end
#
#       case nucleotide
#
#       when 'G'
#         'C'
#       when 'C'
#         'G'
#       when 'T'
#         'A'
#       when 'A'
#         'U'
#       end
#     end
#     return nucleotides.join("")
#   end
#
#   def self.of_rna(rna_strand)
#     nucleotides = rna_strand.split("")
#     nucleotides.map! do |nucleotide|
#
#       if nucleotide != 'G' && nucleotide != 'U' && nucleotide !='C' && nucleotide != 'A'
#         raise ArgumentError.new("Not a valid RNA nucleotide.")
#       end
#
#       case nucleotide
#
#       when 'G'
#         'C'
#       when 'C'
#         'G'
#       when 'U'
#         'A'
#       when 'A'
#         'T'
#       end
#     end
#     return nucleotides.join("")
#   end
# end
