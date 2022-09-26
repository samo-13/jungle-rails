class Admin::DashboardController < ApplicationController
  def show
    # Display a count of how many products are in the database
    @productsTotal = Product.count
    # Display a count of how many categories are in the database
    @categoriesTotal = Category.count
  end
end
