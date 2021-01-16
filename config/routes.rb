Rails.application.routes.draw do

  root "aveidos#index"
  get "/aveidos", to: "aveidos#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
