class PrintMethodsController < ApplicationController
  def index
    @print_methods = PrintMethod.all
  end
end
