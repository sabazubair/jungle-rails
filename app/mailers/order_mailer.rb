class OrderMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def confirmation_email(order)
    @order = order
    @url  = "www.localhost.com/3000"
    mail(to: @order.email, subject: "Thanks for your order #{order[:id]}.")
  end
end
