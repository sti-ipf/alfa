# -*- encoding : utf-8 -*-
Alfa::Application.routes.draw do

  resources :world_readings

  resources :students

  resources :rooms do
    resources :lecture_days
  end

  root :to => "cores#index"
  resources :cores
  resources :coordinators
  resources :educators
  resources :users
  resources :user_sessions
  match 'sign_up' => 'users#sign_up', :as => 'sign_up'
  match 'sign_in' => 'user_sessions#new', :as => 'sign_in'
  match 'sign_out' => 'user_sessions#destroy', :as => 'sign_out'
  match 'update_city' => 'cores#update_city', :as => 'update_city'
  match 'update_rooms/:educator_id/:core_id' => 'educators#update_rooms', :as => 'update_rooms'
  match 'student_update_rooms/:student_id/:core_id' => 'students#update_rooms', :as => 'student_update_rooms'
  match 'coordinator_update_rooms/:coordinator_id/:core_id' => 'coordinators#update_rooms', :as => 'coordinator_update_rooms'
  match 'students_without_mother_name' => 'students#without_mother_name', :as => 'without_mother_name'
  match 'update_cancelled/:id' => 'lecture_days#update_cancelled', :as => 'update_cancelled'
  match ':room_id/presences_list' => 'presences_list#index', :as => 'presences_list'
  match ':room_id/:month/presences_list' => 'presences_list#edit', :as => 'edit_presences_list'
  match 'update_presence/:id/:status' => 'presences_list#update', :as => 'update_presence'
  match 'reports' => 'reports#index', :as => 'reports'
  match 'show_report' => 'reports#show', :as => 'show_report'
  match 'report_update_rooms/:core_id' => 'reports#update_rooms', :as => 'report_update_rooms'

  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

