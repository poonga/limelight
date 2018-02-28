class JobPostingsController < ApplicationController
  skip_before_action :ensure_signed_in, only: [:show]
  before_action :set_job_posting, only: [:show, :edit, :update, :destroy]
  before_action :set_company

  # GET /job_postings
  # GET /job_postings.json
  def index
    @job_postings = JobPosting.all
  end

  # GET /job_postings/1
  # GET /job_postings/1.json
  def show
  end

  # GET /job_postings/new
  def new
    @job_posting = JobPosting.new
  end

  # GET /job_postings/1/edit
  def edit
  end

  # POST /job_postings
  # POST /job_postings.json
  def create
    input_params = job_posting_params

    team_name = input_params.delete(:team_name)
    team = Team.find_or_create_by(name: team_name, company_id: @company.id)

    input_params.merge!({"team_id" => team.id, "company_id" => @company.id.to_s})
    @job_posting = JobPosting.new(input_params)

    if @job_posting.save
      redirect_to company_job_posting_path(@company, @job_posting), notice: 'Job posting was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /job_postings/1
  # PATCH/PUT /job_postings/1.json
  def update
    respond_to do |format|
      if @job_posting.update(job_posting_params)
        format.html { redirect_to company_job_posting_path(@company, @job_posting), notice: 'Job posting was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_posting }
      else
        format.html { render :edit }
        format.json { render json: @job_posting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_postings/1
  # DELETE /job_postings/1.json
  def destroy
    @job_posting.destroy
    respond_to do |format|
      format.html { redirect_to company_job_postings_path(@company), notice: 'Job posting was successfully destroyed.' }
      format.json { head :no_content }
    end
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

  def set_company
    @company = Company.friendly.find params[:company_id]
  end
end
