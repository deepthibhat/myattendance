class AddPasswordDigestToEmployes < ActiveRecord::Migration[5.0]
  def change
    add_column :employes, :password_digest, :string
  end
end
