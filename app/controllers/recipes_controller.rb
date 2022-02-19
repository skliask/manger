class RecipesController < ApplicationController
  def index
  end

  def results
    @ingredients = recipe_params["ingredients"].split(",")
    @recipes = Recipe.search_ingredients(@ingredients).page params[:page]
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:ingredients)
  end
end
