class MenuItemController < ApplicationController

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

  def edit
    @item = MenuItem.find(params[:id])
  end

  def update
    @item = MenuItem.find(params[:id])
    @item.name = params[:item_name].downcase
    @item.description = params[:item_description].downcase
    @item.price = params[:item_price]
    @item.note = params[:item_note]
    if @item.save
      redirect_to section_path(@item.menu_section_id)
    else
      render "/menu-items/edit"
    end
  end

  def delete
    @item = MenuItem.find(params[:id])
    id = @item.menu_section_id
    @item.destroy
    @item.save
      redirect_to section_path(id)
  end


end
