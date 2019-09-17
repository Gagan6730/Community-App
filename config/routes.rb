Rails.application.routes.draw do
  get 'home/homepage'

  root 'home#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :members
  resources :genders
  resources :hobbies
  resources :health_issues
  resources :titles
  resources :married_to
  resources :contacts
  resources :professions

end
