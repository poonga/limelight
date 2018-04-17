class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy, :stats]

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/1/edit
  def edit
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        redirect_to @company, notice: 'Company was successfully updated.'
      else
        render :edit
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      redirect_to companies_url, notice: 'Company was successfully destroyed.'
    end
  end

  def stats
    @job_postings = JobPosting.all.includes(:team)
    @applicants = Applicant.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.friendly.find(params[:company_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.fetch(:company, {})
    end
end
