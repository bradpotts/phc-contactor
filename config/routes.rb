Phccontactor::Engine.routes.draw do

  # Message Routes
  resources :messages, only: [:create]
  get 'contact_us', to: 'messages#new'

  # PHCAccounts Routes
  mount Phcaccounts::Engine, :at => '/'

end
