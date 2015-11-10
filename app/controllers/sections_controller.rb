class SectionsController < ApplicationController

<<<<<<< HEAD
  # def sections
  #   @sections = Section.all
  # end

=======
>>>>>>> 56b405280c4a3e0ca9b6e95757f45d0aee3d8b4f
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

<<<<<<< HEAD
  def get_it_done
    @section          = Section.new
    @section.name     = params[:task_name]
    @section.complete = params[:task_complete]
    @section.save
    redirect_to "/sections"
  end

=======
>>>>>>> 56b405280c4a3e0ca9b6e95757f45d0aee3d8b4f
end
