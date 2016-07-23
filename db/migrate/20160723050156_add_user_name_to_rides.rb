class AddUserNameToRides < ActiveRecord::Migration[5.0]
  def change
    add_column :rides, :user_name, :string
  end
end
