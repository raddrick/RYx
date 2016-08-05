class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.text :description
      t.string :video
      t.references :speaker, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
