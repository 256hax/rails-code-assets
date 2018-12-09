=begin
RoR Route Config Sample
Copyright (c) 2018 Cybozu
Licensed under the MIT License
=end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/inquiries', to: 'inquiries#new'
  post '/inquiries', to: 'inquiries#create'
  resources :inquiries

  root 'inquiries#new'
end
