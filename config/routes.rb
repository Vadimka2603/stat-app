Rails.application.routes.draw do

  get 'load' => 'tasks#new'
  root 'tasks#index'

  resources :tasks

    resources :tasks do
    member do
      get 'analize'
    end
  end

end
