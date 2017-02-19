Phccontactor::Engine.routes.draw do

  # Route for Message Creation
  resources :messages, only: [:new, :create]

end
