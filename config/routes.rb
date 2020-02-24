Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students
  # resources :students, only: [:index, :new, :create]
  resources :teachers, only: [:index, :new, :create]
  get '/teacher/:id', to: 'teachers#show', as: 'teacher'
  resources :projects, only: [:index, :new, :create]
  get '/project/:id', to: 'projects#show', as: 'project'
end
