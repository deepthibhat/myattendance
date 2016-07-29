class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.text :today
      t.real :timein
      t.integer :timeout
      t.timestamps
    end
  end
end
