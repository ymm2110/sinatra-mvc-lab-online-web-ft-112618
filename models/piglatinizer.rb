class PigLatinizer

  def initialize
  end

  def piglatinize(string)
  vowels = ["a","e","i","o","u","A","E","I","O","U"]
  latinize = []
  string.split(" ").map do |word|

    word_array = word.split("")


      if vowels.include? word_array[0]
          piglatinized = word_array.join + "way"
      else
        while !vowels.include? word_array[0]
          word_array.rotate!
          piglatinized = word_array.join + "ay"
        end
      end
     latinize << piglatinized
    end
    latinize.join(" ")
  end
end
