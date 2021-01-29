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

    get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: "public/index.html")]] }
  end
end
