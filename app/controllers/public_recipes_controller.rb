class PublicRecipesController < ApplicationController
  # Get recipes which are public
  def index
    @public = Recipe.where(:public == true)
  end
end
