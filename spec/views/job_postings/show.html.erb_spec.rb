require 'rails_helper'

RSpec.describe "job_postings/show", type: :view do
  before(:each) do
    @job_posting = assign(:job_posting, JobPosting.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
