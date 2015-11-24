class DrinkSectionsController < ApplicationController

  def index
    @drinks = DrinkSection.all
    @drink_items = DrinkItem.all
  end

  def show
    @drink_items = DrinkItem.where(drink_section_id: params[:id])
    @drink = DrinkSection.find(params[:id])
  end

  def create
    @drink = DrinkSection.new
    @drink.name = params[:drink_section_name].upcase
    @drink.description = params[:drink_section_description]
    if @drink.save
      redirect_to "/drinks"
    else
      @drinks = DrinkSection.all
      @drink_items = DrinkItem.all
      render :index
    end
  end

  def edit
    @drink = DrinkSection.find(params[:id])
  end

  def update
    @drink = DrinkSection.find(params[:id])
    @drink.name = params[:drink_section_name].upcase
    @drink.description = params[:drink_section_description]
    if @drink.save
      redirect_to "/drinks"
    else
      render "/drinks/edit"
    end
  end

  def delete
    @drink_items = DrinkItem.where(drink_section_id: params[:id])
    @drink_items.each do |drink_item|
      drink_item.destroy
    end
    @drink = DrinkSection.find(params[:id])
    @drink.destroy
    redirect_to "/drinks"
  end

end
