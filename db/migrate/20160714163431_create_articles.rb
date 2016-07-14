class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :stub
      t.text :body
      t.reference :landing
      t.boolean :published, default: false
      t.reference :author
      t.date :publish_by

      t.timestamps null: false
    end
  end
end
