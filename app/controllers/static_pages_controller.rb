class StaticPagesController < ApplicationController

  def index
    @equipment = Equipment.all
  end

end
