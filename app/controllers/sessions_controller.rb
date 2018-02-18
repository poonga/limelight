class SessionsController < ApplicationController
  before_action :ensure_signed_out, only: [:auth]
  before_action :ensure_signed_in, only: [:revoke]

  def auth
    user = User.find_or_create_from_auth_hash(auth_hash)
    if user.save
      session[:user_id] = user.id
      redirect_to company_job_postings_path(user.company)
    else
      render_error user.errors.full_messages.to_sentence
    end
  end

  def revoke
    session[:user_id] = nil
    redirect_to root_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

  private

  def render_error(message)
    render action: :error, locals: {message: message}
  end

  def ensure_signed_out
    redirect_to session[:redirect_to] ||= root_path if signed_in?
  end
end
