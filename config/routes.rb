Rails.application.routes.draw do

  root'access#login'
  get 'gallery/index'
  get 'video/index'
  get 'admin', :to => 'access#menu'
  get 'access/menu'

  # get 'access/login'

  post 'access/attempt_login'
  get 'access/logout'

  get 'experiments/tts'
  post 'experiments/tts'
  get 'demo/hellos'
 
  #get ':controller(/:action(:id))'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
