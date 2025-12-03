Rails.application.routes.draw do
  get "categories/index"
  root "pages#home"

  get "/bonjour(/:name)", to: "pages#salut", as: "salut"

  resources :posts
end
