class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USERNAME'], password: ENV['ADMIN_PASSWORD']
  def show
    # Display a count of how many products are in the database
    @productsTotal = Product.count
    # Display a count of how many categories are in the database
    @categoriesTotal = Category.count
  end
end
