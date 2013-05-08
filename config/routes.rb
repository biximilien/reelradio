Reelradio::Application.routes.draw do
  root :to => "home#index"
  
  match "playlist" => "playlist#index"
  
  match "home" => "home#index"
end
