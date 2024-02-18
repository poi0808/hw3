Rails.application.routes.draw do
  resources :places do
    resources :entries
  end
  
    root 'places#index'
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

