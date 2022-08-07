class Item < ApplicationRecord
  FILE_LIFE_TIME = 5.minute
  FILE_CONTEN_TYPE = %i[png jpg jpeg].freeze
  MAX_FILE_SIZE = 100.kilobytes

  has_one_attached :file

  validates :file, attached: true, size: { less_than: MAX_FILE_SIZE }, content_type: FILE_CONTEN_TYPE
  validates :custom_url, uniqueness: true

  before_create do |item|
    self.nano_id = Nanoid.generate
  end

  def expired?
    FILE_LIFE_TIME.ago > created_at
  end

  def expired_time
    created_at + FILE_LIFE_TIME
  end

  def elapsed
    (expired_time - Time.now).to_i
  end

  def expired_after
    "#{(elapsed / 60).to_i}:#{(elapsed % 60).to_i}"
  end

  def download_url
    custom_url.presence || nano_id
  end
end
