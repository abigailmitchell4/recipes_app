class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.integer :prep_time
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
