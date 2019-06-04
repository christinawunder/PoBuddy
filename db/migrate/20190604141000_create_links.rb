class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :media
      t.string :title
      t.string :url
      t.string :category

      t.timestamps
    end
  end
end
