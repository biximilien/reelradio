Reelradio::Application.routes.draw do
  root to: 'news#index'
  resources :news
  resources :broadcasts do
    resources :episodes
  end
end
