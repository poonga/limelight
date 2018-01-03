require 'rails_helper'

RSpec.describe "applicants/new", type: :view do
  before(:each) do
    assign(:applicant, Applicant.new())
  end

  it "renders new applicant form" do
    render

    assert_select "form[action=?][method=?]", applicants_path, "post" do
    end
  end
end
