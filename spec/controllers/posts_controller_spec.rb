require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
  
  describe 'GET index' do
    it 'is successful' do
      get :index
      expect(response.status).to eq 200
    end
  end

  describe 'POST create' do
    let(:make_request) { post :create, post: {title: "Blah"} }
    it 'creates a new post' do
      expect { make_request }.to change(Post, :count).by(1)
    end

    it 'is successful' do
      make_request
      expect(response.status).to eq 200
    end

    context 'when given a tag' do
      let(:make_request) { post :create, post: {title: "Blah", tag_names: ["tag", "blah"]} }
      it 'adds tags' do
        expect { make_request }.to change(Tag, :count).by(2)
      end

      it 'doesnt duplicate tags' do
        Tag.create(name: "tag")
        expect { make_request }.to change(Tag, :count).by(1)
      end
    end
  end

  describe 'DELETE destroy' do
    let!(:post) { Post.create(title: "Blah") }
    let(:make_request) { delete :destroy, id: post.id }

    it 'destroys a post' do
      expect {make_request}.to change(Post, :count).by(-1)
    end
  end
end
