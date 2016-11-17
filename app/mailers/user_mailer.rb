class UserMailer < ApplicationMailer
  def order_email(order)
    @order = order
    @line_items = order.line_items
    mail(to: @order.email, subject: "Your Jungle Order: <%= @line_items.order_id %>")
  end
end
