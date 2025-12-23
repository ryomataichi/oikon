Rails.application.routes.draw do
  resources :tweets
  get "oikons/top" => "oikons#index", as: :oikons_top 
  root 'oikons#index'
  get "tweets/match/:bangou" => "tweets#match", as: :tweets_match 
  get "tweets/leftmatch/:bangou" => "tweets#leftmatch", as: :tweets_leftmatch
end
