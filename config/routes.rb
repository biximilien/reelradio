Reelradio::Application.routes.draw do
  root to: 'news#index'
  
  match 'news' => 'news#index'
  match 'news/:id' => 'news#show'
  
  match 'broadcasts' => 'broadcasts#index'
  match 'broadcasts/:id' => 'broadcasts#show'
  match 'broadcasts/:broadcast_id/episodes/:id' => 'episodes#show'
  
end
