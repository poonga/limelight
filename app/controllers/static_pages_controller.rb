class StaticPagesController < ApplicationController
  skip_before_action :ensure_signed_in

  def landing
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
