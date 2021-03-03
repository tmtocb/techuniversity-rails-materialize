require 'rails_helper'

describe StudentsController do

  describe 'GET index' do
    context 'when student is present' do
      before { get :index }
      let!(:student) { create(:student) }

      it 'assigns @students' do
        expect(assigns(:students)).to eq([student])
      end

      it 'renders the index template' do
        expect(response).to render_template(:index)
      end

      it do
        expect(response).to have_http_status(:success)
      end
    end

    context 'when no student present' do
      before { get :index }

      it 'assigns @students' do
        expect(assigns(:students)).to eq([])
      end

      it 'renders the index template' do
        expect(response).to render_template(:index)
      end

      it do
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe 'GET new' do
    before { get :new }

    it 'assigns @student' do
      expect(assigns(:student)).to be_a_new(Student)
    end

    it 'renders the new template' do
      expect(response).to render_template(:new)
    end

    it do
      expect(response).to have_http_status(200)
    end
  end
end