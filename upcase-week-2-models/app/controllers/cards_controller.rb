class CardsController < ApplicationController

  def show
    @cards = Card.find(params[:id])
  end
end