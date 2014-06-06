Rails.application.routes.draw do

  # root to: 'high_voltage/pages#show', id: 'admin'

  #
  # Admin Area
  #
  namespace :admin do
    # resources :users, constraints: { id: /[a-zA-Z.\/0-9_\-]+/ } do
    #   member do
    #     put :team_update
    #     put :block
    #     put :unblock
    #   end
    # end

    resources :groups, constraints: { id: /[^\/]+/ }

    # resources :hooks, only: [:index, :create, :destroy] do
    #   get :test
    # end

    # resources :broadcast_messages, only: [:index, :create, :destroy]
    # resource :logs, only: [:show]
    # resource :background_jobs, controller: 'background_jobs', only: [:show]

    resources :projects, constraints: { id: /[a-zA-Z.\/0-9_\-]+/ }, only: [:index, :show]
    


    root to: "dashboard#index"
  end

  resources :projects, constraints: { id: /[a-zA-Z.0-9_\-]+\/[a-zA-Z.0-9_\-]+/ }, except: [:new, :create, :index], path: "/"

end
