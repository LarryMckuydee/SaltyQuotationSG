class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def show
    @brands = Brand.find(params[:select_id])
  end

  # def create
  #   render "index"
  # end
end
