Rails.application.routes.draw do
  get "/"=> "csv#index"
  post "/data" =>"csv#data"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
