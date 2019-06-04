class AddDayToAdvices < ActiveRecord::Migration[5.2]
  def change
    add_reference :advices, :day, foreign_key: true
  end
end
