Rails.application.routes.draw do
  get 'hello/new'
  post 'hello', to: 'hello#create'
end
