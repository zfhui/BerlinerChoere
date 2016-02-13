Rails.application.routes.draw do
  mount Lockup::Engine, at: '/lockup'

  if ENV['HEROKUAPP_URL'].present? && ENV['PUBLIC_URL'].present?
    constraints(host: /#{ENV['HEROKUAPP_URL']}/) do
      match "/(*path)", to: redirect { |params, req| "//#{ENV['PUBLIC_URL']}/#{params[:path]}" }, via: [:get, :post]
    end
  end

  root to: "home#index"

  devise_for :users,
    skip: :registrations

  resources :choirs
end
