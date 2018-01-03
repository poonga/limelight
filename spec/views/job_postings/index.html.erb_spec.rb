require 'rails_helper'

RSpec.describe "job_postings/index", type: :view do
  before(:each) do
    assign(:job_postings, [
      JobPosting.create!(),
      JobPosting.create!()
    ])
  end

  it "renders a list of job_postings" do
    render
  end
end
