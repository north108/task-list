Rails.application.routes.draw do
# resources :tasks, except: [:destroy]

  root 'tasks#index'
  get '/tasks', to: 'tasks#index', as: 'tasks'
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'


  get '/tasks/:id', to: 'tasks#show', as: 'task'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'

  patch '/tasks/:id/complete', to: 'tasks#completed', as: 'completed_task'
  patch '/tasks/:id/incomplete', to: 'tasks#incomplete', as: 'incomplete_task'
end
