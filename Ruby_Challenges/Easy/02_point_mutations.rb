class DNA
  def initialize(strand)
    @dna_strand = strand
  end

  def hamming_distance(strand)
    calculate_strand_lengths(strand)
    distance = 0
    short_strand.chars.each_with_index do |char, index|
      distance += 1 if char != long_strand[index]
    end
    distance
  end

  private

  attr_reader :dna_strand, :short_strand, :long_strand

  def calculate_strand_lengths(strand)
    if dna_strand.size > strand.size
      @short_strand = strand
      @long_strand = dna_strand
    else
      @short_strand = dna_strand
      @long_strand = strand
    end
  end
end
