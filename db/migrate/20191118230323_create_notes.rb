class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :body
      t.string :author
      t.belongs_to :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
