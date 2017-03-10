require 'rails_helper'

RSpec.describe CandidatesController, type: :controller do

  before(:all) do
    Education.create!(level: 1, qualification: "Bachelors Degree")
  end

  let(:valid_attributes) {
    {
      name: "John Smith",
      email: "john.smith@test.com",
      phone: "07123456789",
      geo_location: "Newcastle",
      education_id: 1
    }
  }

  let(:invalid_attributes) {
    {
      name: "John Smith",
      email: "john.smith@test.com",
      phone: "",
      education_id: 1
    }
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all candidates as @candidates" do
      candidate = Candidate.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:candidates)).to eq([candidate])
    end
  end

  describe "GET #show" do
    it "assigns the requested candidate as @candidate" do
      candidate = Candidate.create! valid_attributes
      get :show, params: {id: candidate.to_param}, session: valid_session
      expect(assigns(:candidate)).to eq(candidate)
    end
  end

  describe "GET #new" do
    it "assigns a new candidate as @candidate" do
      get :new, params: {}, session: valid_session
      expect(assigns(:candidate)).to be_a_new(Candidate)
    end
  end

  describe "GET #edit" do
    it "assigns the requested candidate as @candidate" do
      candidate = Candidate.create! valid_attributes
      get :edit, params: {id: candidate.to_param}, session: valid_session
      expect(assigns(:candidate)).to eq(candidate)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Candidate" do
        expect {
          post :create, params: {candidate: valid_attributes}, session: valid_session
        }.to change(Candidate, :count).by(1)
      end

      it "assigns a newly created candidate as @candidate" do
        post :create, params: {candidate: valid_attributes}, session: valid_session
        expect(assigns(:candidate)).to be_a(Candidate)
        expect(assigns(:candidate)).to be_persisted
      end

      it "redirects to the created candidate" do
        post :create, params: {candidate: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Candidate.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved candidate as @candidate" do
        post :create, params: {candidate: invalid_attributes}, session: valid_session
        expect(assigns(:candidate)).to be_a_new(Candidate)
      end

      it "re-renders the 'new' template" do
        post :create, params: {candidate: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {
          geo_location: "Sunderland"
        }
      }

      it "updates the requested candidate" do
        candidate = Candidate.create! valid_attributes
        put :update, params: {id: candidate.to_param, candidate: new_attributes}, session: valid_session
        candidate.reload
        expect(candidate.geo_location).to eq("Sunderland")
      end

      it "assigns the requested candidate as @candidate" do
        candidate = Candidate.create! valid_attributes
        put :update, params: {id: candidate.to_param, candidate: valid_attributes}, session: valid_session
        expect(assigns(:candidate)).to eq(candidate)
      end

      it "redirects to the candidate" do
        candidate = Candidate.create! valid_attributes
        put :update, params: {id: candidate.to_param, candidate: valid_attributes}, session: valid_session
        expect(response).to redirect_to(candidate)
      end
    end

    context "with invalid params" do
      it "assigns the candidate as @candidate" do
        candidate = Candidate.create! valid_attributes
        put :update, params: {id: candidate.to_param, candidate: invalid_attributes}, session: valid_session
        expect(assigns(:candidate)).to eq(candidate)
      end

      it "re-renders the 'edit' template" do
        candidate = Candidate.create! valid_attributes
        put :update, params: {id: candidate.to_param, candidate: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested candidate" do
      candidate = Candidate.create! valid_attributes
      expect {
        delete :destroy, params: {id: candidate.to_param}, session: valid_session
      }.to change(Candidate, :count).by(-1)
    end

    it "redirects to the candidates list" do
      candidate = Candidate.create! valid_attributes
      delete :destroy, params: {id: candidate.to_param}, session: valid_session
      expect(response).to redirect_to(candidates_url)
    end
  end

end
