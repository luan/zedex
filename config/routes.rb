Zedex::Application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords"
  }

  root to: "home#index"

  if Rails.env.development?
    mount Konacha::Engine => '/konacha'
  end
end
