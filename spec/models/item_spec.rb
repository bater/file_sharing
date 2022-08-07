require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#expired?' do
    let(:item) { build(:item, :expired) }
    it { expect(item.expired?).to eq true }
  end

  describe '#expired_after' do
    subject { build(:item).expired_after }
    before do
      allow_any_instance_of(Item).to receive(:remain_seconds).and_return(remain)
    end
    describe do
      let(:remain) { 200 }
      it { is_expected.to eq '03:20' }
    end
    describe do
      let(:remain) { 60 }
      it { is_expected.to eq '01:00' }
    end
    describe do
      let(:remain) { 601 }
      it { is_expected.to eq '10:01' }
    end
  end
end
