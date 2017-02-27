require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do

    context "invalid credentials" do

      before :each do
        post :create, params: { session: { email: "fionamayhobbs@gmail.com", password: "invalid" } }
      end

      it "should render username or password incorrect error" do
          expect(flash[:error]).to eq(I18n.t :invalid_credentials)
      end

      it "should render the login page" do
        expect(response).to render_template("new")
      end
    end

    context "missing email" do
      it "should render the email required error" do
        post :create, params: { session: { email: "", password: "something" } }
        expect(assigns[:login_details].errors[:email].first).to eq("can't be blank")
      end
    end

    context "missing password" do
      it "should render the password required error" do
        post :create, params: { session: { email: "fionamayhobbs@gmail.com", password: "" } }
        expect(assigns[:login_details].errors[:password].first).to eq("can't be blank")
      end
    end

    context "valid credentials" do

      let(:valid_password) {
        "password"
      }

      let(:valid_user) {
        u = build_stubbed(:user)
        allow(u).to receive(:authenticate).with(valid_password).and_return true
        u
      }

      before :each do
        allow(User).to receive(:find_by_email).with(valid_user.email).and_return(valid_user)
        post :create, params: { session: { email: valid_user.email, password: valid_password } }
      end

      it "should set the user ID in the session" do
        expect(session[:user_id]).to eq(valid_user.email)
      end

      it "should redirect to the candidates#index page" do
        expect(response).to redirect_to candidates_path
      end
    end
  end

end
