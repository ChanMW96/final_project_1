class MailingJob < ActiveJob::Base
  queue_as :default

  def perform(user,msg)
    ApplyMailer.apply_email(user,msg).deliver_now
  end
end
