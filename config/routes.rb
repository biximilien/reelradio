Reelradio::Application.routes.draw do
  root to: 'news#index'
  resources :news, only: [:index, :show]
  resources :broadcasts, only: [:index, :show] do
    resources :episodes, only: [:show]
  end
end
