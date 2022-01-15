require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Comment Association' do 
    it 'should increment comments_count' do 
      post = Post.new(name: "Awesome Post")
      post.comments << Comment.new(content: 'Demo')
      post.save
      expect(Comment.count).to eq(1)
      expect(post.comments_count).to eq(1)
    end
  end
end
