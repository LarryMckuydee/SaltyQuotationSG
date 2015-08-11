class FitsController < ApplicationController
  def show
    @fits = Fit.find(params[:id])
  end
end
