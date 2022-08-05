class Item < ApplicationRecord
  has_one_attached :file

  validates :file, attached: true,
    size: { less_than: 100.kilobytes },
    content_type: [:png, :jpg, :jpeg]

  before_create do |item|
    self.nano_id = Nanoid.generate
  end

  FILE_LIFE_TIME = 5.minute

  def expired?
    FILE_LIFE_TIME.ago > created_at
  end

  def expired_time
    created_at + FILE_LIFE_TIME
  end
end
