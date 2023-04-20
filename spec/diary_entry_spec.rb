require 'diary_entry'

RSpec.describe DiaryEntry do
  context 'count words method' do
    it 'Should return an integer ' do
      entry_1 = DiaryEntry.new("today", "Went to shop")
      expect(entry_1.count_words).to eq 3
    end
  end
end