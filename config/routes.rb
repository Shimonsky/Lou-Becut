Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'application#home'
  resources :books
  resources :old_news_papers
  resources :old_papers
  resources :postal_cards
end
