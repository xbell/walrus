class SectionsController < ApplicationController

  def index
    @sections = Section.all
    @items = MenuItem.all
  end

  def show
    @items = MenuItem.where(menu_section_id: params[:id])
    @section = Section.find(params[:id])
  end

  def create
    @section = Section.new
    @section.name = params[:section_name].upcase
    @section.description = params[:section_description]
    if @section.save
      redirect_to "/sections"
    else
      @sections = Section.all
      @items = MenuItem.all
      render :index
    end
  end

  def delete_section
    raise
    if @section = Section.find_by(params[:section_name])
      @section.destroy
      @section.save
      redirect_to "/sections"
    end
  end

end



  # def destroy
  #   @section.name = params[:section_name]
  #   raise
  #   @section.destroy
  #   @section.save
  #   redirect_to "/sections"
  # end
