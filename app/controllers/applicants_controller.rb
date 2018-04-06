class ApplicantsController < ApplicationController
  skip_before_action :ensure_signed_in, only: [:new, :show, :create]
  before_action :set_applicant, only: [:show, :edit, :update, :destroy]
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

  # GET /applicants/1/edit
  def edit
  end

  # POST /applicants
  # POST /applicants.json
  def create
    @applicant = Applicant.new(applicant_params)

    if @applicant.save
      redirect_to job_posting_applicant_path(@job_posting, @applicant), notice: 'Applicant was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /applicants/1
  # PATCH/PUT /applicants/1.json
  def update
    respond_to do |format|
      if @applicant.update(applicant_params)
        format.html { redirect_to @applicant, notice: 'Applicant was successfully updated.' }
        format.json { render :show, status: :ok, location: @applicant }
      else
        format.html { render :edit }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
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

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def strong_params
    params.require(:applicant).permit(
      :first_name,
      :last_name,
      :email,
      :resume
    )
  end

  def applicant_params
    strong_params.merge( job_posting_id: @job_posting.id.to_s )
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_applicant
    @applicant = Applicant.friendly.find(params[:id])
  end

  def set_job_posting
    @job_posting = JobPosting.find(params[:job_posting_id])
  end

end
