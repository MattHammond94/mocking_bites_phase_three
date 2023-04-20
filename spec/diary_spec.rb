require 'diary'

describe Diary do
  context 'entries method' do
    it 'Should return a list of all entry instances passed' do
      fake_entry = FakeDiaryEntry.new
      diary_1 = Diary.new
      diary_1.add(fake_entry)
      expect(diary_1.entries).to eq [fake_entry]
    end
  end 


  context 'after multiple adds' do
    it 'Should ' do
      fake_entry_1 = FakeDiaryEntry.new
      fake_entry_2 = FakeDiaryEntryTwo.new
      diary_1 = Diary.new
      diary_1.add(fake_entry_1)
      diary_1.add(fake_entry_2)
      expect(diary_1.count_words).to eq 12
    end
  end
end

class FakeDiaryEntry
  def count_words
    return 4
  end
end

class FakeDiaryEntryTwo
  def count_words
    return 8
  end
end

