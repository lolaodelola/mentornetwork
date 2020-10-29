Rails.application.routes.draw do
  devise_for :mentors, controllers: { registrations: "mentors" }

  devise_scope :mentor do
    root 'mentors#root'
    resources :mentors, param: :uuid do
      collection do
        get '/results', to: 'mentors#results', as: 'results'
      end
    end
  end

  get '/privacy-policy', to: 'static#privacy_policy'
end
