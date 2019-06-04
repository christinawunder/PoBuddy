class CreateAdvices < ActiveRecord::Migration[5.2]
  def change
    create_table :advices do |t|
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
