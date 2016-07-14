class AddDataColumnsToLandings < ActiveRecord::Migration
  def change
    add_column :landings, :name, :string
    add_column :landings, :body, :text
  end
end
