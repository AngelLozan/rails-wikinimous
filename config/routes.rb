Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

    # Display all articles
    get 'articles', to: 'articles#index', as: :articles
    # Need both get form and post result
    get 'articles/new', to: 'articles#new', as: :new_article
    post 'articles', to: 'articles#create'
    # Display individual articles
    get 'article/:id', to: 'articles#show', as: :article
    # Edit requires a patch too
    get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
    patch 'article/:id', to: 'articles#update'
    # delete
    delete 'article/:id', to: 'articles#destroy'
end
