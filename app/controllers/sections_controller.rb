class SectionsController < ApplicationController

  # def sections
  #   @sections = Section.all
  # end

  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def get_it_done
    @section          = Section.new
    @section.name     = params[:task_name]
    @section.complete = params[:task_complete]
    @section.save
    redirect_to "/sections"
  end

end
