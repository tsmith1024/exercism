class Complement
  def self.of_dna(arg1)
    complements = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }
    transcription = arg1.chars.map { |c| complements[c] || '' }.join
    transcription.length == arg1.length ? transcription : ''
  end
end

class BookKeeping
  VERSION = 4
end
