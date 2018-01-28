require 'rails_helper'

RSpec.describe CandidatesController, type: :controller do
  before(:all) do
    @candidate = create(:john_smith)
  end

  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all candidates as @candidates' do
      get :index, params: {}, session: valid_session
      expect(assigns(:candidates)).to eq([@candidate])
    end
  end

  describe 'GET #new' do
    it 'assigns a new candidate as @candidate' do
      get :new, params: {}, session: valid_session
      expect(assigns(:candidate)).to be_a_new(Candidate)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested candidate as @candidate' do
      get :edit, params: { id: @candidate.to_param }, session: valid_session
      expect(assigns(:candidate)).to eq(@candidate)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Candidate' do
        expect do
          post :create, params: { candidate: @candidate.attributes }, session: valid_session
        end.to change(Candidate, :count).by(1)
      end

      it 'assigns a newly created candidate as @candidate' do
        post :create, params: { candidate: @candidate.attributes }, session: valid_session
        expect(assigns(:candidate)).to be_a(Candidate)
        expect(assigns(:candidate)).to be_persisted
      end

      it 'redirects to the index page' do
        post :create, params: { candidate: @candidate.attributes }, session: valid_session
        expect(response).to redirect_to(action: :index)
      end

      it 'sets flash success' do
        post :create, params: { candidate: @candidate.attributes }, session: valid_session
        expect(controller).to set_flash[:success]
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved candidate as @candidate' do
        post :create, params: { candidate: @candidate.attributes.merge('name' => '') }, session: valid_session
        expect(assigns(:candidate)).to be_a_new(Candidate)
      end

      it "re-renders the 'new' template" do
        post :create, params: { candidate: @candidate.attributes.merge('name' => '') }, session: valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        {
          geo_location: 'Sunderland'
        }
      end

      it 'updates the requested candidate' do
        put :update, params: { id: @candidate.to_param, candidate: new_attributes }, session: valid_session
        @candidate.reload
        expect(@candidate.geo_location).to eq('Sunderland')
      end

      it 'assigns the requested candidate as @candidate' do
        put :update, params: { id: @candidate.to_param, candidate: new_attributes }, session: valid_session
        expect(assigns(:candidate)).to eq(@candidate)
      end

      it 'redirects to the index page' do
        put :update, params: { id: @candidate.to_param, candidate: new_attributes }, session: valid_session
        expect(response).to redirect_to(action: :index)
      end

      it 'sets flash success' do
        put :update, params: { id: @candidate.to_param, candidate: new_attributes }, session: valid_session
        expect(controller).to set_flash[:success]
      end
    end

    context 'with invalid params' do
      it 'assigns the candidate as @candidate' do
        put :update, params: { id: @candidate.to_param, candidate: @candidate.attributes.merge('name' => '') }, session: valid_session
        expect(assigns(:candidate)).to eq(@candidate)
      end

      it "re-renders the 'edit' template" do
        put :update, params: { id: @candidate.to_param, candidate: @candidate.attributes.merge('name' => '') }, session: valid_session
        expect(response).to render_template('edit')
      end
    end
  end
end
