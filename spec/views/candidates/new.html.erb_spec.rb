require 'rails_helper'

RSpec.describe "candidates/new", type: :view do
  before(:each) do
    assign(:candidate, Candidate.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :geo_location => "MyString"
    ))
  end

  it "renders new candidate form" do
    render

    assert_select "form[action=?][method=?]", candidates_path, "post" do

      assert_select "input#candidate_first_name[name=?]", "candidate[first_name]"

      assert_select "input#candidate_last_name[name=?]", "candidate[last_name]"

      assert_select "input#candidate_email[name=?]", "candidate[email]"

      assert_select "input#candidate_phone[name=?]", "candidate[phone]"

      assert_select "input#candidate_geo_location[name=?]", "candidate[geo_location]"
    end
  end
end
