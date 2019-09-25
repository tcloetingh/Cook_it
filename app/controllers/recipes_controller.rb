class RecipesController < ApplicationController
  def index
    @recipe = Recipe.order("RANDOM()").first
  end

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create(recipe_params)
      if @recipe.invalid?
        flash[:error] = 'Could not save.. invalid data'
      end
    redirect_to root_path
  end

  def about
  end

  private

  def recipe_params
    params.require(:recipe).permit(:recipe, :instructions)
  end
end
