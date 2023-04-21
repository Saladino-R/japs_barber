class CutsController < ApplicationController

  def index
    @cuts = Cut.all
  end


end
