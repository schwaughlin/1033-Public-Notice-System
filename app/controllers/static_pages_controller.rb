class StaticPagesController < ApplicationController

  def index
    @equipment = Equipment.all
  end

  def law_enforcement_landing

  end

end
