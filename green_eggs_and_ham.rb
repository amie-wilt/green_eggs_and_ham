class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
  end

  def words
    @text.split.map { |word| word.downcase.gsub(/[^a-z-]/, '') }
  end

  def book
    @book
  end

  def word_count
    words.length
  end

  def sorted_unique_words
    words.uniq.sort
  end

  def number_of_words_shorter_than(x)
    @shortwords = @text.downcase.gsub(/[^a-z-]/, ' ').split.select {|n| n.length < x}
    @shortwords.length
  end

  def longest_word
    @text.split(" ").max_by(&:length)
  end

  def frequency_of_unique_words
    @text.downcase.gsub(/[^a-z-]/, ' ').split.each_with_object(Hash.new(0)){|key, hash| hash[key] += 1}
  end

  def stanzas
    @text.split(/\n\n/)
  end

  def lines

  end
end


puts @shortwords