class ApplicantMailer < ApplicationMailer
  default from: "recruiting@limelight.com"

  def contact(user, applicant, subject, body)
    @applicant = applicant
    @body = body
    mail(from: user.email, to: @applicant.email, subject: subject)
  end
end
