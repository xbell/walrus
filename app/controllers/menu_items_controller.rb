class MenuItemsController < ApplicationController

  def create
    @item = MenuItem.new
    @item.name = params[:item_name].downcase
    @item.description = params[:item_description].downcase
    @item.price = params[:item_price]
    @item.note = params[:item_note]
    @item.menu_section_id = params[:id]
    if @item.save
      redirect_to "/sections/#{params[:id]}"
    else
      @section = Section.find(params[:id])
      @items = MenuItem.where(menu_section_id: params[:id])
      render "sections/show"
    end
  end


end
