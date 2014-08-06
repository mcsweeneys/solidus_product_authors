Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resources :authors, :controller => "product_authors" do
        member do
          get :select
          delete :remove
        end
        collection do
          post :available
          post :batch_select
          get  :selected
        end
      end
    end
    resources :authors
  end

  resources :authors, only: [:show]
end
