class QuotationsController < ApplicationController
  def index
    @quotations = Quotation.all
  end

  def new
    @quotation = Quotation.new
    @quotation.customer = Customer.new
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
  def show
    @quotation = Quotation.find(params[:id])
  end

  def create
    @quotation = current_apparel_consultant.quotations.new(quotation_params)
    # respond_to do |format|
    #   format.html
    #   format.js{}
    #   format.json {
    #     render json: {quotation: @quotation}
    #   }
    # end
    if @quotation.save
      redirect_to @quotation
    else
      render 'new'
    # render :json => @quotation
    end
  end

  def edit
    @quotation = Quotation.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
   def quotation_params

    #  ActionController::Parameters.permit_all_parameters = true
     params.require(:quotation).permit!
   end
end
