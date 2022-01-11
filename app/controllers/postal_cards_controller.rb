class PostalCardsController < ApplicationController

  def index
    @postal_cards = PostalCard.all
  end

  def show
    @postal_card = PostalCard.find(params[:id])
  end

  def new
    @postal_card = PostalCard.new
  end

  def create
    @postal_card = PostalCard.new(postal_card_params)
    if @postal_card.save
      redirect_to postal_card_path(@postal_card)
    else
      render :new 
    end
  end

  def edit
    @postal_card = PostalCard.find(params[:id])
  end

  def update
    @postal_card = PostalCard.find(params[:id])
    if @postal_card.update(postal_card_params)
      redirect_to @postal_card
    else
      render :edit
    end
  end

  def destroy
    @postal_card = PostalCard.find(params[:id])
    @postal_card.destroy
  end

  private

  def postal_card_params
    params.require(:postal_card).permit(:country, :department, :city, :year, :editor, :condition, :description, :image_url)
  end
end
