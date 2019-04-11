Phccontactor::Engine.routes.draw do

    # Route for Message Creation
    resources :messages, only: [:create]
    get 'contact_us', to: 'messages#new'

    # Mount Account Routes
    mount Phcaccounts::Engine, :at => '/'

end
