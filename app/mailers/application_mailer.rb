class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@svp.com'
  layout 'mailer'

  def confirmation(applicant)
    @applicant = applicant
    @url = "/"
    mail(to: @applicant.email, subject: "Thank You for Starting Your Fast Pitch Application!")
  end

end
