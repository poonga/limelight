class StaticPagesController < ApplicationController
  skip_before_action :ensure_signed_in

  def landing
    if user_signed_in?
      redirect_to company_job_postings_path(current_user[:company_id])
    end
  end

  def authentication
  end

  def pricing
  end

  def contact_us
  end

  def about_us
  end

  def services
  end
end
