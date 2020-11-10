Rails.application.routes.draw do
  # view all
  get '/tasks', to: 'tasks#index'
  # create new
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  # view one
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
