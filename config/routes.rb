Rails.application.routes.draw do
  root "welcome#index"
  get "/user", to: "users#show"
end
