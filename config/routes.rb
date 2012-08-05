# -*- encoding : utf-8 -*-
Alfa::Application.routes.draw do

  resources :occupations

  resources :world_readings

  resources :students do
    resources :presence_list_comments
  end

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
  match 'new_lecture_day/:room_id' => 'lecture_days#new_lecture_day', :as => 'new_lecture_day'
  match ':room_id/:month/finish_presence_list' => 'presences_list#finish', :as => 'finish_presence_list'
  match ':room_id/presences_list' => 'presences_list#index', :as => 'presences_list'
  match ':room_id/:month/presences_list' => 'presences_list#edit', :as => 'edit_presences_list'
  match 'update_presence/:id/:status' => 'presences_list#update', :as => 'update_presence'
  match 'update_student_presences/:room_id/:month/:student_id/:status' => 'presences_list#update_student_presences', :as => 'update_student_presences'
  match 'reports' => 'reports#index', :as => 'reports'
  match 'show_report' => 'reports#show', :as => 'show_report'
  match 'report_update_rooms/:core_id' => 'reports#update_rooms', :as => 'report_update_rooms'

  match 'show_second_report/:column/:second_column/:core_id/:room_id' => 'reports#show_second_report', :as => 'show_second_report'
  match 'students/:student_id/:month/show_presence_list_comments' => 'presence_list_comments#show', :as => 'show_presence_list_comments'
  
end

