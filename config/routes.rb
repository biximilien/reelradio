Reelradio::Application.routes.draw do
  root to: 'news#index'
  resource :news
  resource :broadcasts do
    resource :episodes
  end
end
