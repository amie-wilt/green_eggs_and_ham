class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
  end

  def book
    @book
  end

  def word_count
    @text.split.length
  end

  def sorted_unique_words
    @text.downcase.gsub(/[^a-z-]/, ' ').split.uniq.sort
  end

  def number_of_words_shorter_than(x)
    @wordsarray = @text.downcase.gsub(/[^a-z-]/, ' ').split.uniq.sort
    @newarray = @wordsarray.reject { |i| i.length > x }
    @newarray.length
  end
end

puts @newarray.lengthgit