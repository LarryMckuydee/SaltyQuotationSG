class CustomersController < ApplicationController
  def index
    @customers = Customer.order(:full_name).where("full_name like ?","%#{params[:name]}%")
    render json: @customers.map(&:full_name)
  end
end
