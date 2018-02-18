class ErrorsController < ApplicationController
  skip_before_action :verify_authenticity_token, :ensure_signed_in
  before_action { request.format = :html }
end
