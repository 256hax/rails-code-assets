Rails.application.routes.draw do
  devise_for :admin_members, class_name: "Pt::AdminMember"
  namespace :pt do
    resources :participations
  end
  namespace :pt do
    resources :events
    resources :members
    resources :trainers
  end

  root to: "pt/events#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
