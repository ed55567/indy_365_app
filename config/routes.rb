Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/services" => "services#index"
    post "/services" => "services#create"
    get "/services/:id" => "services#show"
    patch "/services/:id" => "services#update"
    delete "/services/:id" => "services#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    post "/requests" => "requests#create"
  end

  namespace :address_search do
    get "expand", to: "expand"
    get "parse", to: "parse"
  end
end
