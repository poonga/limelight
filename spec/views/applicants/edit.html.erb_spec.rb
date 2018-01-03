require 'rails_helper'

RSpec.describe "applicants/edit", type: :view do
  before(:each) do
    @applicant = assign(:applicant, Applicant.create!())
  end

  it "renders the edit applicant form" do
    render

    assert_select "form[action=?][method=?]", applicant_path(@applicant), "post" do
    end
  end
end
