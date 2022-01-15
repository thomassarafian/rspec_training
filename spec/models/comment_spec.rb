require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Comment characters numbers limit' do
    it 'should have minimum 10 characters' do
      comment = Comment.new(content: "Ah!")
      expect(Comment.valid?).to be false
    end
  end
end
