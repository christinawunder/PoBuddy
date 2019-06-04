class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.integer :bleeding
      t.integer :bad_mood
      t.integer :head_pain
      t.integer :abdominal_pain
      t.integer :breast_pain
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
