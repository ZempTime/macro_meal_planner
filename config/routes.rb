Rails.application.routes.draw do
  devise_for :users

  root to: "main#landing"


  resources :users do
    get "/home", to: "main#home", as: :home
    get "/edibles", to: "main#edibles", as: :edibles
    get "/meals", to: "main#meals", as: :meals

    patch "update_macros", to: "main#update_macros", as: :update_macros
  end
end
