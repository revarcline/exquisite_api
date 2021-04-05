class Corpse < ApplicationRecord
  has_many :entries

  def self.random
    Corpse.order(Arel.sql('RANDOM()')).first
  end

  def full_content
    entries.map(&:content).join(' ')
  end
end
