class SectionsController < ApplicationController

  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def create()
    @section = Section.new
    @section.name = params[:section_name]
    @section.description = params[:section_description]
    if params[:section_name].blank?
      "Entry cannot be blank."
      redirect_to "/sections"
    else
      @section.save
      redirect_to "/sections"
    end
  end

  # def destroy
  #   @section.name = params[:section_name]
  #   raise
  #   @section.destroy
  #   @section.save
  #   redirect_to "/sections"
  # end

end
