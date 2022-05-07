Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    resources :posts, :interests
  end

  # namespace :api do
  #   namespace :v1 do
      # resources :users do
      #   member do
      #     resources :profiles
      #     resources :posts
      #   end
      # end

      # or 
#       resources :users do
#         resources :profile, on: :member, except: [:new, :edit, :show]
#         resources :posts, on: :member
#       end
#     end
#   end
# end