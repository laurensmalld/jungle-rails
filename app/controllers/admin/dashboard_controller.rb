class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV.fetch("ADMIN_NAME"), password: ENV.fetch("ADMIN_PASSWORD")

  def show
  end
end
