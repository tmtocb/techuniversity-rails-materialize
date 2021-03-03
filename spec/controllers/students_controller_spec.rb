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

  describe "GET show" do
    before { get :show, params: params }
    let(:params) do
      { id: student.id }
    end
    let!(:student) { create(:student) }

    it "assigns @student" do
      expect(assigns(:student)).to eq(student)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
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

  describe 'GET edit' do
    before { get :edit, params: params }
    let(:params) do
      { id: student.id }
    end
    let!(:student) { create(:student) }

    it 'assigns @student' do
      subject
      expect(assigns(:student)).to eq(student)
    end

      it 'renders the edit template' do
        expect(response).to render_template(:edit)
      end
  end
end