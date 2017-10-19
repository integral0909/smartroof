Rails.application.routes.draw do

  root 'pages#home'

  get '/states' => 'pages#state'
  get '/contractors' => 'pages#contractor'

  get '/faq' => 'pages#faq'

end
