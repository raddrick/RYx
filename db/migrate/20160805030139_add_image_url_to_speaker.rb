class AddImageUrlToSpeaker < ActiveRecord::Migration
  def change
    add_column :speakers, :image_url, :string
  end
end
