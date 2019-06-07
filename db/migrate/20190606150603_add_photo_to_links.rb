class AddPhotoToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :photo_url, :string
  end
end
