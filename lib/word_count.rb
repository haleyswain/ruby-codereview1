class String
  define_method(:word_count) do |word|
    search = self.downcase.scan(word)
    search.length
  end
end
