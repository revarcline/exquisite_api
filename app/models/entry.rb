class Entry < ApplicationRecord
  belongs_to :corpse

  # assign preview when creating entry
  def content=(content)
    self.preview = content.split(' ').slice(-5, 5).join(' ')
    super
  end
end
