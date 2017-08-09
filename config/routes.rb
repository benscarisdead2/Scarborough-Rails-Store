Rails.application.routes.draw do
  resources :stores do
    resources :shoes 
  end

end
