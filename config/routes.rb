Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/bikes" => "bikes#index"
  get "/bikes/:id" => "bikes#show"
  post "/bikes" => "bikes#create"
  patch "/bikes/:id" => "bikes#update"
end
