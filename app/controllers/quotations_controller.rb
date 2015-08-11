class QuotationsController < ApplicationController
  def index
  end

  def new
    @quotation = Quotation.new
    # @brand = Brand.all
    # @quotation.brand = Brand.new
    # @quotation.fit = Fit.new
    # @quotation.shirt_type = ShirtType.new

  end

  # def update_fits
  #   brand = Brand.find(params[:brand_id])
  #   fit = brand.fit
  #
  #   render :update do |page|
  #     page.replace_html 'quotation_fit_id', :partial => 'quotation_fit_id', :object => songs
  #   end
  # end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
