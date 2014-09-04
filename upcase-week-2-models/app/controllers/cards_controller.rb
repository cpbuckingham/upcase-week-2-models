class CardsController < ApplicationController

  def show
    @deck = find_deck
    @card = @deck.cards.find(params[:id])
  end

  def new
    @deck = find_deck
    @card = @deck.cards.new
  end

  def create
    @deck = find_deck
    @card = Card.new(front: params[:card][:front],
                     back: params[:card][:back],
                     deck: @deck)
    @card.save
    redirect_to @deck
  end

  def edit
    @deck = find_deck
    @card = find_card
  end
  def update
    @deck = find_deck
    @card = find_card
    @card.update(front: params[:card][:front],
                  back: params[:card][:back],
                  deck: @deck)
    redirect_to @deck
  end
  def destroy
    @deck = find_deck
    @card = find_card
    @card.destroy
    redirect_to @deck
  end
  end

  private

  def find_deck
    Deck.find(params[:deck_id])
  end
  def find_card
    Card.find(params[:id])
  end