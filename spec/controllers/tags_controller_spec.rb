require 'rails_helper'

RSpec.describe TagsController, :type => :controller do
  describe 'GET index' do
    it 'is successful' do
      get :index
      expect(response.status).to eq 200
    end
  end

  describe 'POST create' do
    let(:make_request) { post :create, tag: {title: "Blah"} }
    it 'creates a new tag' do
      expect { make_request }.to change(Tag, :count).by(1)
    end

    it 'is successful' do
      make_request
      expect(response.status).to eq 200
    end
  end

  describe 'DELETE destroy' do
    let!(:tag) { Tag.create(name: "Blah") }
    let(:make_request) { delete :destroy, id: tag.id }

    it 'destroys a tag' do
      expect {make_request}.to change(Tag, :count).by(-1)
    end
  end
end