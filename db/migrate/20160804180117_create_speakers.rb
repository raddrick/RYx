class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.text :bio
      t.string :instagram
      t.string :facebook
      t.string :linkedin
      t.string :twitter

      t.timestamps null: false
    end
  end
end
