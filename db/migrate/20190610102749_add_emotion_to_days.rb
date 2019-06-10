class AddEmotionToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :emotion, :string
  end
end
