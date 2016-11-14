class UserMailer < ApplicationMailer
    default from: 'no-reply@jungle.com'

  def order_conf_email(order)
    @user = user
    @line_item = line_item
    @order = order_id
    @url  = 'http://localhost:3000'
    mail(to: @user.email,
          subject: 'Order Confirmation: #{@line_item.order_id}'
          template_path: 'views/user_mailer'
          template_name: 'order_email')
  end
end
