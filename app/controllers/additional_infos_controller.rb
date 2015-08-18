class AdditionalInfosController < ApplicationController
  def new
    @additional_info=AdditionalInfo.new
  end

  def update

    @additional_info = AdditionalInfo.find(params[:id])
    if @additional_info.update(params.permit(:approval_id))
      redirect_to @additional_info.quotation
    else
      render json: 'Failed'
    end
  end
end
