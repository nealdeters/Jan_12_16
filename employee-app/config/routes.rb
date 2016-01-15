Rails.application.routes.draw do
  get '/' => 'employees#home'
  get '/all' => 'employees#all'
  get '/new_employee' => 'employees#new'
  post '/added_employee' => 'employees#added'
end
