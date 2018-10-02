Rails.application.routes.draw do
  resource :me, controller: 'users'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
