class MenuItemsController < ApplicationController

  # def index
  #   @sections = Section.all
  #   @items = MenuItem.all
  # end
  #
  # def show
  #   @items = MenuItem.where(menu_section_id: params[:id])
  #   @section = Section.find(params[:id])
  # end

  def create
    @item = MenuItem.new
    @item.name = params[:item_name]
    @item.description = params[:item_description]
    @item.price = params[:item_price]
    @item.note = params[:item_note]
    @item.menu_section_id = params[:id]
    if @item.save
      redirect_to "/sections/#{params[:id]}"
    else
      @items = MenuItem.all
      render :show
    end
  end


end
