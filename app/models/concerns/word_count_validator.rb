class WordCountValidator < ActiveModel::Validator
  def validate(record)
    word_list = record.content.split(' ')
    record.errors.add(:content, 'must be longer than 20 words') unless word_list.length >= 20
  end
end
