class Item < ApplicationRecord
  has_one_attached :file

  before_create do |item|
    self.nano_id = Nanoid.generate
  end
end
