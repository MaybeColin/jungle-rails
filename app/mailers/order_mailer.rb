class OrderMailer < ApplicationMailer

  default from: 'noreply@jungle.com'

  def receipt_email(order)
    @order = order
    mail(to: @order.email.to_s, subject: 'Receipt for ' + @order.id.to_s)
  end
end
