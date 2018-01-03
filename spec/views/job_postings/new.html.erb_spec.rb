require 'rails_helper'

RSpec.describe "job_postings/new", type: :view do
  before(:each) do
    assign(:job_posting, JobPosting.new())
  end

  it "renders new job_posting form" do
    render

    assert_select "form[action=?][method=?]", job_postings_path, "post" do
    end
  end
end
