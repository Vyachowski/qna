require 'rails_helper'

describe Question, type: :model do
  subject { described_class.new(title: 'Title', body: 'Body') }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end
