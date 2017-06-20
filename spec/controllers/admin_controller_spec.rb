# rubocop:disable Metrics/BlockLength

require 'rails_helper'

RSpec.describe AdminController, type: :controller do
  describe 'GET #index' do
    before { get :index }

    it 'returns http success' do
      expect(response).to have_http_status :success
    end

    it 'renders the index template' do
      expect(response).to render_template :index
    end
  end

  describe 'GET #settings' do
    before { get :settings }

    it 'returns http success' do
      expect(response).to have_http_status :success
    end

    it 'assigns @font' do
      expect(assigns(:font)).to eq Settings.font
    end

    it 'assigns @typography' do
      expect(assigns(:typography)).to eq Settings.typography
    end

    it 'renders the settings template' do
      expect(response).to render_template :settings
    end
  end

  describe 'GET #admin_settings' do
    before { get :admin_settings }

    it 'returns http success' do
      expect(response).to have_http_status :success
    end
  end
end
