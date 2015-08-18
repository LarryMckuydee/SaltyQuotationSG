class RelabelController < ApplicationController
  def index
    @relabels = Relabel.all
    @woven_tags = WovenTag.all
  end
end
