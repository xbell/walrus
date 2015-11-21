class DrinkItemController < ApplicationController

  def create
    @drink_item = DrinkItem.new
    @drink_item.name = params[:drink_item_name].downcase
    @drink_item.description = params[:drink_item_description].downcase
    @drink_item.region = params[:drink_item_region]
    @drink_item.pricing = params[:drink_item_pricing]
    @drink_item.drink_section_id = params[:id]
    if @drink_item.save
      redirect_to "/drinks/#{params[:id]}"
    else
      @drink = DrinkSection.find(params[:id])
      @drink_items = DrinkItem.where(drink_section_id: params[:id])
      render "drinks/show"
    end
  end

  def edit
    @drink_item = DrinkItem.find(params[:id])
  end

  def update
    @drink_item = DrinkItem.find(params[:id])
    @drink_item.name = params[:drink_item_name].downcase
    @drink_item.description = params[:drink_item_description].downcase
    @drink_item.region = params[:drink_item_region]
    @drink_item.pricing = params[:drink_item_pricing]
    if @drink_item.save
      redirect_to drink_path(@drink_item.drink_section_id)
    else
      render "/drink-items/edit"
    end
  end

  def delete
    @drink_item = DrinkItem.find(params[:id])
    id = @drink_item.drink_section_id
    @drink_item.destroy
      redirect_to drink_path(id)
  end


end
