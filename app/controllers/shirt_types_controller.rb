class ShirtTypesController < ApplicationController
  def index
    @shirt_types = ShirtType.all
  end
  def show
    if(params.has_key?(:fitid)&&params.has_key?(:quantity))
      @shirt_type = ShirtType.find(params[:id])
      @shirt_type_price = ShirtType.all.showprice(params[:id],params[:fitid],params[:quantity])
    else
      @shirt_type = ShirtType.find(params[:id])
    end
    # render :json => @shirt_type
  end
end
