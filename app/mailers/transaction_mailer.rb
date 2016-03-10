class TransactionMailer < ActionMailer::Base

  def bonus_received(recipient)
    @recipient = recipient
    mail(to: @recipient.email,
      from: "bonusprojectmailer@gmail.com",
      subject: "New Bonus Received",
      body: "Congratulations! You have received a new bonus!"
    )
  end

end
