Presskit::Application.routes.draw do
  resources :releases
  get "/releases/:id/download" => "releases#download", as: "pdf_download"

  # root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users


  authenticated :user do
	  root to: "home#index", as: :authenticated_root
	end

   unauthenticated do
	  root to: "home#welcome", as: :unauthenticated_root
    get "welcome" => "home#welcome", as: "release_teaser"
	end
end