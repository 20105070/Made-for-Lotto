Rails.application.routes.draw do
  get 'makelines', to: 'pages#makelines'
  get 'faqs', to: 'pages#faqs'
  get 'loadlines', to: 'pages#loadlines'

  #post '/makelines', :controller=>'pages', :action=>'generate'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#makelines"
end
