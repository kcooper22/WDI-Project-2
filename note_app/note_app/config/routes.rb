Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  resources :projects do
    member do
      put 'complete'
    end
    member do
      put 'reverse_status'
    end
    resources :tasks do
      member do
        put 'complete'
      end
      member do
        put 'reverse_status'
    end
    end
  end

  root 'projects#index'

#                   Prefix Verb   URI Pattern                                        Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                           devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                           devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                          devise/sessions#destroy
#            user_password POST   /users/password(.:format)                          devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                      devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                     devise/passwords#edit
#                          PATCH  /users/password(.:format)                          devise/passwords#update
#                          PUT    /users/password(.:format)                          devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                            registrations#cancel
#        user_registration POST   /users(.:format)                                   registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                           registrations#new
#   edit_user_registration GET    /users/edit(.:format)                              registrations#edit
#                          PATCH  /users(.:format)                                   registrations#update
#                          PUT    /users(.:format)                                   registrations#update
#                          DELETE /users(.:format)                                   registrations#destroy
#                    users GET    /users(.:format)                                   users#index
#                          POST   /users(.:format)                                   users#create
#                 new_user GET    /users/new(.:format)                               users#new
#                edit_user GET    /users/:id/edit(.:format)                          users#edit
#                     user GET    /users/:id(.:format)                               users#show
#                          PATCH  /users/:id(.:format)                               users#update
#                          PUT    /users/:id(.:format)                               users#update
#                          DELETE /users/:id(.:format)                               users#destroy
#         complete_project PUT    /projects/:id/complete(.:format)                   projects#complete
#    complete_project_task PUT    /projects/:project_id/tasks/:id/complete(.:format) tasks#complete
#            project_tasks GET    /projects/:project_id/tasks(.:format)              tasks#index
#                          POST   /projects/:project_id/tasks(.:format)              tasks#create
#         new_project_task GET    /projects/:project_id/tasks/new(.:format)          tasks#new
#        edit_project_task GET    /projects/:project_id/tasks/:id/edit(.:format)     tasks#edit
#             project_task GET    /projects/:project_id/tasks/:id(.:format)          tasks#show
#                          PATCH  /projects/:project_id/tasks/:id(.:format)          tasks#update
#                          PUT    /projects/:project_id/tasks/:id(.:format)          tasks#update
#                          DELETE /projects/:project_id/tasks/:id(.:format)          tasks#destroy
#                 projects GET    /projects(.:format)                                projects#index
#                          POST   /projects(.:format)                                projects#create
#              new_project GET    /projects/new(.:format)                            projects#new
#             edit_project GET    /projects/:id/edit(.:format)                       projects#edit
#                  project GET    /projects/:id(.:format)                            projects#show
#                          PATCH  /projects/:id(.:format)                            projects#update
#                          PUT    /projects/:id(.:format)                            projects#update
#                          DELETE /projects/:id(.:format)                            projects#destroy
#                     root GET    /                                                  projects#index

end
