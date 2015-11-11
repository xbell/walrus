class SectionsController < ApplicationController

  def index
    @sections = Section.all
  end

  def show
    @item = Item.all
    @section = Section.find(params[:id])
  end

  def create
    @item = Item.new
    @item.name = params[:item_name]
    @item.description = params[:item_description]
    @item.price = params[:item_price]
    @item.notes = params[:item_note]
    if @item.save
      redirect_to "/sections/:id"
    else
      @items = Item.all
      render :section[:id]
    end
  end


end
