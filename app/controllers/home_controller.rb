class HomeController < ApplicationController
  def index
  end
  # def generateform
  #   require "prawn"
  #
  #   Prawn::Document.generate("hello.pdf") do
  #     # image "/app/assets/images/saltylogoblack.png"
  #     image Rails.root.join('app','assets','images','saltylogoblack.png').to_s, scale: 0.25
  #     move_down 20
  #     font "Arial",:style => :bold_underline
  #     text "Hello World!"
  #   end
  #   redirect_to root_path
  # end
end
