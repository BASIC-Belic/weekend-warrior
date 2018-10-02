
class Complement

  def self.of_dna(dna_strand)
    rna = []

      dna_strand.chars.each do |nucleotide|
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

    return rna.to_a
  end
end

# class Complement
#
#   def self.of_dna(dna_strand)
#     nucleotides = dna_strand.split('')
#     nucleotides.map! do |nucleotide|
#       case nucleotide
#       when 'G'
#         'C'
#       when 'C'
#         'G'
#       when 'T'
#         'T'
#       when 'A'
#         'U'
#       end
#     end
#     return nucleotides
#   end
# end
