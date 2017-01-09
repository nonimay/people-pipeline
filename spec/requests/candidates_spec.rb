require 'rails_helper'

RSpec.describe "Candidates", type: :request do
  describe "GET /candidates/new" do
    it "works! (now write some real specs)" do
      get new_candidate_path
      expect(response).to have_http_status(200)
    end
  end
end
