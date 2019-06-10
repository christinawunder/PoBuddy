class AddUsertextToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :usertext, :text
  end
end
