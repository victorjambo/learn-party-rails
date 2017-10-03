Rails.application.routes.draw do
  devise_for :users
  resources :videos do
    resources :comments
    member do
  		put "like" => 'videos#upvote'
  		put "unlike" => 'videos#downvote'
		end
	end
  get 'welcome/home'
  get 'tags/:tag', to: 'videos#index', as: :tag
  root 'welcome#home'
end
