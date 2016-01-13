Rails.application.routes.draw do
  get '/' => 'employees#home'
  get '/all' => 'employees#all'
end
