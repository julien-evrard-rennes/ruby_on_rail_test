Rails.application.routes.draw do
  root "pages#home"
  get "/bonjour(/:name)", to: "pages#salut", as: "salut"
end
