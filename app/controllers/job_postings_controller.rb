class JobPostingsController < ApplicationController
  skip_before_action :ensure_signed_in, only: [:show]
  before_action :set_job_posting, only: [:show, :edit, :update, :destroy]
  before_action :set_company

  def index
    @job_postings = JobPosting.all.includes(:team)
  end

  def show
    if user_signed_in?
      @applicants = @job_posting.applicants
      render template: "job_postings/show"
    else
      render template: "job_postings/apply"
    end
  end

  def apply
  end

  def new
    @job_posting = JobPosting.new
  end

  def edit
  end

  def create
    @job_posting = JobPosting.new(filtered_params)
    if @job_posting.save
      redirect_to company_job_posting_path(@company, @job_posting), notice: 'Job posting was successfully created.'
    else
      render :new
    end
  end

  def update
    if @job_posting.update(filtered_params)
      redirect_to company_job_posting_path(@company, @job_posting), notice: 'Job posting was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @job_posting.destroy
    redirect_to company_job_postings_path(@company), notice: 'Job posting was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_job_posting
    @job_posting = JobPosting.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def job_posting_params
    params.require(:job_posting).permit(
      :title,
      :team_name,
      :description,
      :min_salary,
      :years_of_experience
    )
  end

  def filtered_params
    params = job_posting_params
    team = Team.find_or_create_by(name: params.delete(:team_name), company_id: @company.id)
    params.merge(team_id: team.id, company_id: @company.id.to_s)
  end

  def set_company
    @company = Company.friendly.find params[:company_id]
  end
end
