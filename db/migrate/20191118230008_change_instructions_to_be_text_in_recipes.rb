class ChangeInstructionsToBeTextInRecipes < ActiveRecord::Migration[6.0]
  def change
    change_column :recipes, :instructions, :text
  end
end
