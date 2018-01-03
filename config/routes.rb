Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'pages/todos', to: 'todos#index'
root 'todos#index'
get 'todos/new'
post 'todos', to: 'todos#create'
patch 'todos/:id', to: 'todos#update'
get 'todos/:id', to: 'todos#show', as: 'todo'
get 'todos/:id/edit', to: 'todos#edit', as: 'todo_edit'
delete '/todos/:id', to: 'todos#destroy', as: 'todo_delete'
get '/todos/:id/complete', to: 'todos#complete', as: 'todo_complete'
end
