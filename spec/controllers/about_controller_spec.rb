require 'rails_helper'

RSpec.describe AboutController, type: :controller do
  describe 'GET #index' do
    before { get :index }

    it 'returns http success' do
      expect(response).to have_http_status :success
    end

    it 'assigns @author' do
      expect(assigns(:author)).to eq Settings.author
    end

    it 'renders the index template' do
      expect(response).to render_template :index
    end
  end
end
