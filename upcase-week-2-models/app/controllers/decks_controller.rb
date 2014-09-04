class DecksController < ApplicationController
before_filter :authenticate
  def index
    @decks = Deck.all
  end
  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
  end
  def new
    @deck = Deck.new
  end
  def create
    @deck = Deck.new(name: params[:deck][:name])
    @deck.save
    redirect_to @deck
  end
  def edit
    @deck = Deck.find(params[:id])
  end
  def update
    @deck = Deck.find(params[:id])
    @deck.update(name: params[:deck][:name])
    redirect_to @deck
  end
  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to @deck
  end



end