require 'rails_helper'

RSpec.describe "applicants/index", type: :view do
  before(:each) do
    assign(:applicants, [
      Applicant.create!(),
      Applicant.create!()
    ])
  end

  it "renders a list of applicants" do
    render
  end
end
