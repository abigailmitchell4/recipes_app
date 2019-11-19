class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]


  def index
    @recipes = current_user.recipes
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipes_path
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :category, :prep_time, :instructions, :ingredients)
    end

    def set_recipe
      @recipe = current_user.recipes.find(params[:id])
    end

end
