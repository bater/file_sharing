require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#expired?' do
    let(:item) { build(:item, :expired) }
    it { expect(item.expired?).to eq true }
  end
end
