require 'rails_helper'

describe CoursesController do

  describe 'GET index' do
    context 'when course is present' do
      before { get :index }
      let!(:course) { create(:course) }

      it 'assigns @courses' do
        expect(assigns(:courses)).to eq([course])
      end

      it 'renders the index template' do
        expect(response).to render_template(:index)
      end

      it do
        expect(response).to have_http_status(:success)
      end
    end

    context 'when no course present' do
      before { get :index }

      it 'assigns @courses' do
        expect(assigns(:courses)).to eq([])
      end

      it 'renders the index template' do
        expect(response).to render_template(:index)
      end

      it do
        expect(response).to have_http_status(:success)
      end
    end
  end
end