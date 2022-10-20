# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'foods#index'
  resources :recipes
  resources :recipe_foods
  resources :foods
  resources :inventory_foods
  resources :inventories
  resources :users
  resources :public_recipes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
