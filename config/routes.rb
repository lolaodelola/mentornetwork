Rails.application.routes.draw do
  devise_for :mentors, controllers: { registrations: "mentors" }

  devise_scope :mentor do
    root 'mentors#root'
    resources :mentors, param: :username do
      collection do
        get '/results', to: 'mentors#results', as: 'results'
      end
    end
  end
end
