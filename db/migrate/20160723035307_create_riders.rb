class CreateRiders < ActiveRecord::Migration[5.0]
  def change
    create_table :riders do |t|
      t.string :name
      t.string :home_address
      t.string :work_address
      t.string :email

      t.timestamps
    end
  end
end
