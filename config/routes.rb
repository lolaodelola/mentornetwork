Rails.application.routes.draw do
  devise_for :mentors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :mentors
end
