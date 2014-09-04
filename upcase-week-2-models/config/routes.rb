Rails.application.routes.draw do
  # get "/decks" => "decks#index"
  # get "/decks/new" => "decks#new"
  # get "/decks/:id" => "decks#show", as: :deck
  # post "/decks" => "decks#create"
  # get "/decks/:id/edit" => "decks#edit"
  # patch "/decks/:id" => "decks#update"
  # delete "/decks/:id" => "decks#destroy"
root to: "homes#index"
  resources :decks do
    resources :cards, except: :index

  end
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

end
