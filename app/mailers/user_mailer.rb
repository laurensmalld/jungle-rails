class UserMailer < ApplicationMailer
    default from: 'no-reply@jungle.com'

  def order_email(order)
    @user = user
    @line_items = @order.line_items
    @order = order_id
    @url  = 'http://localhost:3000'
    mail(to: @user.email,
          subject: 'Jungle Order Confirmation: #{@order}'
          template_path: 'views/user_mailer'
          template_name: 'order_email')
  end
end
