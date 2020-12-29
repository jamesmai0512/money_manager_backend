Rails.application.routes.draw do
  defaults format: :json do
    resources :wallets
    resources :transactions
  end
end
