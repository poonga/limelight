class StaticPagesController < ApplicationController
  skip_before_action :ensure_signed_in, only: [:landing, :authentication]

  def landing
  end

  def authentication
  end
end
