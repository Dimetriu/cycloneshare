Rails.application.routes.draw do
  get '/:locale' => 'home#index'

  root 'home#index'
  scope '/:locale' do
    devise_for :users, skip: :omniauth_callbacks
  end
end
