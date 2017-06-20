# rubocop:disable Metrics/BlockLength

require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  let!(:article) { Article.create(title: 'Title', author: 'Author') }

  describe 'GET #index' do
    before { get :index }

    it 'returns http success' do
      expect(response).to have_http_status :success
    end

    it 'assigns @articles' do
      expect(assigns(:articles)).to eq [article]
    end

    it 'assigns @featured' do
      expect(assigns(:featured)).to eq article
    end

    it 'renders the index template' do
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    before { get :show, params: { id: article.id } }

    it 'returns http success' do
      expect(response).to have_http_status :success
    end

    it 'assigns @article' do
      expect(assigns(:article)).to eq article
    end

    it 'renders the show template' do
      expect(response).to render_template :show
    end
  end

  describe 'GET #new' do
    before { get :new }

    it 'returns http success' do
      expect(response).to have_http_status :success
    end

    it 'assigns @article' do
      expect(assigns(:article)).to be_a_new Article
    end

    it 'renders the new template' do
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    context 'when valid' do
      before do
        post :create, params: { article: { title: 'Title', author: 'Andy' } }
      end

      it 'redirects to #show method with friendly slug for id' do
        response.should redirect_to action: :show, id: assigns(:article).slug
      end
    end

    context 'when invalid' do
      before { post :create, params: { article: { title: 'Title' } } }

      it 'will render new template' do
        expect(response).to render_template :new
      end
    end
  end

  describe 'GET #edit' do
    before { get :edit, params: { id: article.id } }

    it 'returns http success' do
      expect(response).to have_http_status :success
    end

    it 'assigns @article' do
      expect(assigns(:article)).to eq(article)
    end

    it 'renders the edit template' do
      expect(response).to render_template :edit
    end
  end

  describe 'PUT #update' do
    context 'when success' do
      before do
        put :update,
            params: { article: { text: 'Some new text' }, id: article.id }
      end

      it 'redirects to #show method with friendly slug for id' do
        response.should redirect_to action: :show, id: assigns(:article).slug
      end
    end
  end

  describe 'DELETE #destroy' do
    before { delete :destroy, params: { id: article.id } }

    it 'will redirect to articles path' do
      expect(response).to redirect_to articles_path
    end
  end
end
