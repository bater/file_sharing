FactoryBot.define do
  factory :item do
    trait :expired do
      created_at { (Item::FILE_LIFE_TIME + 1.minute).ago }
    end
  end
end