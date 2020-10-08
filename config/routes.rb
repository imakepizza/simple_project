Rails.application.routes.draw do
  get 'experiments/tts'
  get 'demo/hellos'
  get 'demo/index'
 
  #get ':controller(/:action(:id))'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
