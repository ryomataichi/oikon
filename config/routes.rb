Rails.application.routes.draw do
  resources :tweets
  root 'oikons#index'
  get "tweets/match/:bangou" => "tweets#match", as: :tweets_match 
  get "tweets/leftmatch/:bangou" => "tweets#leftmatch", as: :tweets_leftmatch
end
