class CreateAdvices < ActiveRecord::Migration[5.2]
  def change
    create_table :advices do |t|
      t.references :link, foreign_key: true
      t.references :day, foreign_key: true

      t.timestamps
    end
  end
end
