Blog::Application.routes.draw do

  resources :people do
  	get :count, on: :collection
  end

  root to: "people#index"

end