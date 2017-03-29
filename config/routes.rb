Rails.application.routes.draw do
  # get 'pages/welcome'

  get 'pages/page1'
  get 'pages/page2'
  get 'pages/page3'
  get 'pages/page4'
  root :to => 'pages#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
