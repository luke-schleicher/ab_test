Rails.application.routes.draw do

  root 'employees#index'

  devise_for :employees, controllers: { sessions: 'employees/sessions' }

  resources :employees

end
