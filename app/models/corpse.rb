class Corpse < ApplicationRecord
  has_many :entries
  accepts_nested_attributes_for :entries

  def self.random
    Corpse.order(Arel.sql('RANDOM()')).first
  end

  def full_content
    entries.map(&:content).join(' ')
  end

  def create_date
    created_at.strftime('%B %d, %Y').downcase
  end
end
