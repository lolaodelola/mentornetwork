Rails.application.routes.draw do
  devise_for :mentors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :mentors, param: :username do
    collection do
      get '/results', to: 'mentors#results', as: 'results'
    end
  end
end
