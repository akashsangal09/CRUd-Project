Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "logins#index"
  get 'create_new_account' => "logins#create_new_account"
  post 'new' => "logins#new"
  get "login_success",to: "logins#login_success"
  # post 'new' => "logins#new"


  get 'dashboard', to: 'dashboards#index'
  get 'user_profile', to: 'users#user_profile'   
  get 'logout_user', to: "dashboards#login_user"
  get 'edit_user', to: "dashboards#edit_user"
  post 'update_user', to: "dashboards#update_user"
  get 'user_destroy', to: "dashboards#user_destroy"
  
end
