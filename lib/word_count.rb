class String
  define_method(:word_count) do |phrase|
    downcased_input = self.downcase()
    input = downcased_input.split(" ")
    input = input.count(phrase)
  end
end
