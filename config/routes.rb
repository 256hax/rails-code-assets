Rails.application.routes.draw do
  namespace :pt do
    resources :events
    resources :members
    resources :trainers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
