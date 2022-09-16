require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  render_views 
  
  describe 'POST /posts' do
    it 'create a new post' do
      post :create, params: {content: 'This is the content'}
      expect(Post.count).to eq(1)
    end

    it 'responds with a post' do
      post :create, params: {content: 'Some more content'}

      expected_response = {
        post: {
          content: 'Some more content'
        }
      }
      expect(response.body).to eq(expected_response.to_json)
    end
  end
end
