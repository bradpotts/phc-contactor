Phccontactor::Engine.routes.draw do

	resources :messages, only: [:new, :create]

end
