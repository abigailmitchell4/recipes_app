class NotesController < ApplicationController
  before_action :set_recipe

  def new
    @note = Note.new
  end

  def create
    @note = @recipe.notes.new(note_params)
    if @note.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end

    def note_params
      params.require(:note).permit(:body, :author)
    end
end