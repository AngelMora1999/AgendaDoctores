Rails.application.routes.draw do
  devise_for :users

  get "/paciente", to: "home#patient"  
  get "/doctor", to: "home#doctor"

  authenticated :user do
    root "home#index"
  end

  unauthenticated :user do
    devise_scope :user do
      root "home#patient", as: :unregistered_root
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
