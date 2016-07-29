class CreateEmployes < ActiveRecord::Migration[5.0]
  def change
    create_table :employes do |t|
      t.string :name
      t.text :address
      t.string :email
      t.string :gender
      t.string :phone_number
      t.timestamps
    end
  end
end
