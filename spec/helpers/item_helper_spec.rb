require 'rails_helper'

RSpec.describe ItemHelper, type: :helper do
  describe '#allowed_content_type' do
    it { expect(helper.allowed_content_type).to eq 'png, jpg, jpeg' }
  end

  describe '#max_file_size_human' do
    it { expect(helper.max_file_size_human).to eq '100 KB' }
  end

  describe '#expired_time_human' do
    it { expect(helper.expired_time_human).to eq '5 minutes' }
  end
end