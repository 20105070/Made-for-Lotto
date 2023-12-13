# frozen_string_literal: true

Rails.application.routes.draw do
  resources :lines
  get 'makelines', controller: 'lines', action: 'makelines'
  get 'makelines', to: 'lines#makelines'
  get 'faqs', to: 'lines#faqs'
  get 'loadlines', to: 'lines#loadlines'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'lines#makelines'
end
