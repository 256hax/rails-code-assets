Rails.application.routes.draw do
  namespace :inboxes do
    resources :spams
  end
  resources :inboxes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
