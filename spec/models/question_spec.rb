require 'rails_helper'

RSpec.describe Question, type: :model do
  it 'should create a new question' do
    expect(Question.new(title: 'Title', body: 'body')).to be_valid
  end

  it 'should not create new question' do
    expect(Question.new(body: '123')).to_not be_valid
    expect(Question.new(title: '123')).to_not be_valid
  end
end
