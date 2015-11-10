class HomeController < ApplicationController

  def index
    @section = Section.all
  end


  def show
    @sections = Section.find(params[:id])
  end


def sections
end

end
