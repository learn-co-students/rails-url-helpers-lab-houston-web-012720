Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'students/:id', to: 'students#show'
  # get 'students', to: 'students#index'

  resources :students, only: [:index, :show]
  get '/students/:id', to: 'students#show', as: 'this_kid'
  get '/students/:id/active', to: 'students#active', as: 'activate_student'
end
