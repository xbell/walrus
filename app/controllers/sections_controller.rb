class SectionsController < ApplicationController

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
