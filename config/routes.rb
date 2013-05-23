Zedex::Application.routes.draw do
  devise_for :users
  root to: "home#index"

  if Rails.env.development?
    mount Konacha::Engine => '/konacha'
  end
end
