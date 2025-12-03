Rails.application.routes.draw do
  root "pages#home"

  get "/bonjour(/:name)", to: "pages#salut", as: "salut"

  get "/articles", to: "posts#index", as: "posts"
end
