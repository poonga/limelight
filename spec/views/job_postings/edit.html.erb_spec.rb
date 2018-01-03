require 'rails_helper'

RSpec.describe "job_postings/edit", type: :view do
  before(:each) do
    @job_posting = assign(:job_posting, JobPosting.create!())
  end

  it "renders the edit job_posting form" do
    render

    assert_select "form[action=?][method=?]", job_posting_path(@job_posting), "post" do
    end
  end
end
