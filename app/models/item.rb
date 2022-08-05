class Item < ApplicationRecord
  has_one_attached :file

  validates :file, attached: true,
    size: { less_than: 100.kilobytes },
    content_type: [:png, :jpg, :jpeg]
  validates :custom_url, uniqueness: true

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

  def download_url
    custom_url.presence || nano_id
  end
end
