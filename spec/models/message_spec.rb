require 'rails_helper'

describe Message do
  it { is_expected.to belong_to :user }

  describe '#create' do
    let(:string) { "A cool message" }
    let(:user) { FactoryGirl.create(:user) }
    subject { described_class.new(user: user, message: string) }

    it "creates an object" do
      expect(subject).to be_kind_of(described_class)
      expect(subject.message).to eq(string)
      expect(subject.user).to eq(user)
    end
  end
end
