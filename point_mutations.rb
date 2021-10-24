class DNA
  attr_reader :dna_strand

  def initialize(str)
    @dna_strand = str
  end

  def hamming_distance(strand)
    count = 0
    sorted_strands = [strand, dna_strand].sort { |a, b| a.length <=> b.length }
    sorted_strands[0].chars.each_with_index do |ltr, idx|
      count += 1 unless ltr == sorted_strands[1].chars[idx]
    end
    count
  end
end
