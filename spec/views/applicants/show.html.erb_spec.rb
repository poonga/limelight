require 'rails_helper'

RSpec.describe "applicants/show", type: :view do
  before(:each) do
    @applicant = assign(:applicant, Applicant.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
