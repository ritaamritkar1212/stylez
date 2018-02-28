Rails.application.routes.draw do
  resources :quantities
  resources :patterns
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # 
  resources :patterns do
  member do
	get "add_quantities", to: "patterns#add_quantities"  end
	post "update_quantities", to: "patterns#update_quantities"
  end

  resources :pattern_sizes
  
end
