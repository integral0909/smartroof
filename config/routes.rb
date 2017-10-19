Rails.application.routes.draw do

  root 'pages#home'

  get '/fencing' => 'pages#fencing'

  get '/states' => 'pages#state'
  get '/contractors' => 'pages#contractor'
  get '/home-advice' => 'pages#advice'

  get '/faq' => 'pages#faq'

end
