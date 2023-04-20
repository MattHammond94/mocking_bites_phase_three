class Diary
  def initialize 
    @list = []
  end

  def add(entry)
    @list << entry
  end

  def entries
    @list
  end

  def count_words
    @list.sum { |entry| entry.count_words }
  end
end