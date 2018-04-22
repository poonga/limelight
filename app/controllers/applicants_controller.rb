class ApplicantsController < ApplicationController
  skip_before_action :ensure_signed_in, only: [:new, :show, :create, :thank_you]
  before_action :set_applicant, only: [:show, :destroy, :thank_you]
  before_action :set_job_posting

  # GET /applicants
  # GET /applicants.json
  def index
    @applicants = Applicant.all
  end

  # GET /applicants/1
  # GET /applicants/1.json
  def show
  end

  # GET /applicants/new
  def new
    @applicant = Applicant.new
  end

  # POST /applicants
  # POST /applicants.json
  def create
    @applicant = Applicant.new(applicant_params)

    if @applicant.save
      resume_rank
      redirect_to job_posting_applicant_thank_you_path(@job_posting, @applicant)
    else
      render :new
    end
  end

  # DELETE /applicants/1
  # DELETE /applicants/1.json
  def destroy
    @applicant.destroy
    respond_to do |format|
      format.html { redirect_to applicants_url, notice: 'Applicant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def thank_you
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def strong_params
    params.require(:applicant).permit(
      :first_name,
      :last_name,
      :email,
      :resume,
      :website_url,
      :linkedin_url,
      :phone_numnber
    )
  end

  def applicant_params
    strong_params.merge( job_posting_id: @job_posting.id.to_s )
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_applicant
    @applicant = Applicant.friendly.find(params[:applicant_id])
  end

  def set_job_posting
    @job_posting = JobPosting.find(params[:job_posting_id])
  end

  def resume_rank
    resume_path = Rails.root.join('public/resumes/', @applicant.resume.path)
    reader = PDF::Reader.new(resume_path.to_s)
    contents = reader.pages.map(&:text).join(' ')

    @weighted_keywords = Highscore::Content.new(contents).keywords.map do |kw|
      [kw.text, kw.weight]
    end.to_h
  end

end
