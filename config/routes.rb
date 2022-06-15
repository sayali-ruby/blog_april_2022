Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    resources :posts, :interests, :comments

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