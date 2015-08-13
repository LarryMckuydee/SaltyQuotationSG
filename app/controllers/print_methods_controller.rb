class PrintMethodsController < ApplicationController
  def index
    @print_methods = PrintMethod.all
  end
  def show
    if(params.has_key?(:sizeid)&&params.has_key?(:quantity))
      @print_mehod = PrintMethod.find(params[:id])
      @print_method_price = PrintMethod.all.showprice(params[:id],params[:sizeid],params[:quantity])
      @print_method_block_charge = PrintMethod.all.showblockcharge(params[:id],params[:sizeid],params[:quantity])
    else
      @print_mehod = PrintMethod.find(params[:id])
    end
  end
end
