Reelradio::Application.routes.draw do
  root :to => "home#index"
  
  match "playlist" => "playlist#index"
  match "home" => "home#index"

  resources :news
  resources :broadcasts, :has_many => :episodes

end
