class AdditionalInfosController < ApplicationController
  def update

    @additional_info = AdditionalInfo.find(params[:id])
    if @additional_info.update(params.permit(:approval_id))
      render "new"
    else
      render "new"
    end
  end
end
