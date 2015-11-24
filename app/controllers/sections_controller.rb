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

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    @section.name = params[:section_name].upcase
    @section.description = params[:section_description]
    if @section.save
      redirect_to "/"
    else
      render "/sections/edit"
    end
  end

  def delete
    @items = MenuItem.where(menu_section_id: params[:id])
    @items.each do |item|
      item.destroy
    end
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to "/sections"
  end

end
